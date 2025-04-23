<?php

namespace App\Http\Controllers;

use App\Models\Project;
use App\Models\Lead;
use Illuminate\Http\Request;

class ProjectController extends Controller
{
    public function index()
    {
        $projects = Project::with('lead.product')->get();
        return view('projects.index', compact('projects'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'lead_id' => 'required|exists:leads,id',
        ]);

        Project::create([
            'lead_id' => $request->lead_id,
        ]);

        return redirect()->route('projects.index')->with('success', 'Project created successfully.');
    }

    public function approve(Project $project)
{
    $project->update(['status' => 'approved']);

    $customer = \App\Models\Customer::updateOrCreate(
        ['email' => $project->lead->email], 
        [
            'name' => $project->lead->name,
            'phone' => $project->lead->phone,
        ]
    );

    $customer->products()->syncWithoutDetaching([$project->lead->product_id]);

    return redirect()->route('projects.index')->with('success', 'Project approved and customer added successfully.');
}
}