PGDMP                      }            jonathan_crm    17.4    17.4 e    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16387    jonathan_crm    DATABASE     r   CREATE DATABASE jonathan_crm WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en-US';
    DROP DATABASE jonathan_crm;
                     postgres    false            �            1259    17363    cache    TABLE     �   CREATE TABLE public.cache (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);
    DROP TABLE public.cache;
       public         heap r       postgres    false            �            1259    17370    cache_locks    TABLE     �   CREATE TABLE public.cache_locks (
    key character varying(255) NOT NULL,
    owner character varying(255) NOT NULL,
    expiration integer NOT NULL
);
    DROP TABLE public.cache_locks;
       public         heap r       postgres    false            �            1259    17469    customer_product    TABLE     �   CREATE TABLE public.customer_product (
    id bigint NOT NULL,
    customer_id bigint NOT NULL,
    product_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 $   DROP TABLE public.customer_product;
       public         heap r       postgres    false            �            1259    17468    customer_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.customer_product_id_seq;
       public               postgres    false    241            �           0    0    customer_product_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.customer_product_id_seq OWNED BY public.customer_product.id;
          public               postgres    false    240            �            1259    17458 	   customers    TABLE       CREATE TABLE public.customers (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    phone character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.customers;
       public         heap r       postgres    false            �            1259    17457    customers_id_seq    SEQUENCE     y   CREATE SEQUENCE public.customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.customers_id_seq;
       public               postgres    false    239            �           0    0    customers_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;
          public               postgres    false    238            �            1259    17395    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap r       postgres    false            �            1259    17394    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public               postgres    false    229            �           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public               postgres    false    228            �            1259    17387    job_batches    TABLE     d  CREATE TABLE public.job_batches (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    total_jobs integer NOT NULL,
    pending_jobs integer NOT NULL,
    failed_jobs integer NOT NULL,
    failed_job_ids text NOT NULL,
    options text,
    cancelled_at integer,
    created_at integer NOT NULL,
    finished_at integer
);
    DROP TABLE public.job_batches;
       public         heap r       postgres    false            �            1259    17378    jobs    TABLE     �   CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);
    DROP TABLE public.jobs;
       public         heap r       postgres    false            �            1259    17377    jobs_id_seq    SEQUENCE     t   CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.jobs_id_seq;
       public               postgres    false    226            �           0    0    jobs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;
          public               postgres    false    225            �            1259    17428    leads    TABLE     +  CREATE TABLE public.leads (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    phone character varying(255),
    product_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.leads;
       public         heap r       postgres    false            �            1259    17427    leads_id_seq    SEQUENCE     u   CREATE SEQUENCE public.leads_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.leads_id_seq;
       public               postgres    false    235            �           0    0    leads_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.leads_id_seq OWNED BY public.leads.id;
          public               postgres    false    234            �            1259    17330 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap r       postgres    false            �            1259    17329    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public               postgres    false    218            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public               postgres    false    217            �            1259    17347    password_reset_tokens    TABLE     �   CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 )   DROP TABLE public.password_reset_tokens;
       public         heap r       postgres    false            �            1259    17407    pengguna    TABLE     �  CREATE TABLE public.pengguna (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    role character varying(255) DEFAULT 'admin'::character varying NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.pengguna;
       public         heap r       postgres    false            �            1259    17406    pengguna_id_seq    SEQUENCE     x   CREATE SEQUENCE public.pengguna_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.pengguna_id_seq;
       public               postgres    false    231            �           0    0    pengguna_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.pengguna_id_seq OWNED BY public.pengguna.id;
          public               postgres    false    230            �            1259    17419    products    TABLE     �   CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    price integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.products;
       public         heap r       postgres    false            �            1259    17418    products_id_seq    SEQUENCE     x   CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public               postgres    false    233            �           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public               postgres    false    232            �            1259    17444    projects    TABLE     �  CREATE TABLE public.projects (
    id bigint NOT NULL,
    lead_id bigint NOT NULL,
    status character varying(255) DEFAULT 'pending'::character varying NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT projects_status_check CHECK (((status)::text = ANY ((ARRAY['pending'::character varying, 'approved'::character varying])::text[])))
);
    DROP TABLE public.projects;
       public         heap r       postgres    false            �            1259    17443    projects_id_seq    SEQUENCE     x   CREATE SEQUENCE public.projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.projects_id_seq;
       public               postgres    false    237            �           0    0    projects_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;
          public               postgres    false    236            �            1259    17354    sessions    TABLE     �   CREATE TABLE public.sessions (
    id character varying(255) NOT NULL,
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);
    DROP TABLE public.sessions;
       public         heap r       postgres    false            �            1259    17337    users    TABLE     x  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap r       postgres    false            �            1259    17336    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public               postgres    false    220            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public               postgres    false    219            �           2604    17472    customer_product id    DEFAULT     z   ALTER TABLE ONLY public.customer_product ALTER COLUMN id SET DEFAULT nextval('public.customer_product_id_seq'::regclass);
 B   ALTER TABLE public.customer_product ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    241    240    241            �           2604    17461    customers id    DEFAULT     l   ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);
 ;   ALTER TABLE public.customers ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    239    238    239            �           2604    17398    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    229    228    229            �           2604    17381    jobs id    DEFAULT     b   ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);
 6   ALTER TABLE public.jobs ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    225    226    226            �           2604    17431    leads id    DEFAULT     d   ALTER TABLE ONLY public.leads ALTER COLUMN id SET DEFAULT nextval('public.leads_id_seq'::regclass);
 7   ALTER TABLE public.leads ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    235    234    235            �           2604    17333    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    217    218            �           2604    17410    pengguna id    DEFAULT     j   ALTER TABLE ONLY public.pengguna ALTER COLUMN id SET DEFAULT nextval('public.pengguna_id_seq'::regclass);
 :   ALTER TABLE public.pengguna ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    231    230    231            �           2604    17422    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    232    233    233            �           2604    17447    projects id    DEFAULT     j   ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);
 :   ALTER TABLE public.projects ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    237    236    237            �           2604    17340    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    219    220    220            �          0    17363    cache 
   TABLE DATA           7   COPY public.cache (key, value, expiration) FROM stdin;
    public               postgres    false    223   ,x       �          0    17370    cache_locks 
   TABLE DATA           =   COPY public.cache_locks (key, owner, expiration) FROM stdin;
    public               postgres    false    224   Ix       �          0    17469    customer_product 
   TABLE DATA           _   COPY public.customer_product (id, customer_id, product_id, created_at, updated_at) FROM stdin;
    public               postgres    false    241   fx       �          0    17458 	   customers 
   TABLE DATA           S   COPY public.customers (id, name, email, phone, created_at, updated_at) FROM stdin;
    public               postgres    false    239   �x       �          0    17395    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public               postgres    false    229   y       �          0    17387    job_batches 
   TABLE DATA           �   COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
    public               postgres    false    227   3y       �          0    17378    jobs 
   TABLE DATA           c   COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
    public               postgres    false    226   Py       �          0    17428    leads 
   TABLE DATA           [   COPY public.leads (id, name, email, phone, product_id, created_at, updated_at) FROM stdin;
    public               postgres    false    235   my       �          0    17330 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public               postgres    false    218   �y       �          0    17347    password_reset_tokens 
   TABLE DATA           I   COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
    public               postgres    false    221   �z       �          0    17407    pengguna 
   TABLE DATA           ~   COPY public.pengguna (id, name, email, email_verified_at, password, role, remember_token, created_at, updated_at) FROM stdin;
    public               postgres    false    231   �z       �          0    17419    products 
   TABLE DATA           X   COPY public.products (id, name, description, price, created_at, updated_at) FROM stdin;
    public               postgres    false    233   �{       �          0    17444    projects 
   TABLE DATA           O   COPY public.projects (id, lead_id, status, created_at, updated_at) FROM stdin;
    public               postgres    false    237   �|       �          0    17354    sessions 
   TABLE DATA           _   COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM stdin;
    public               postgres    false    222   /}       �          0    17337    users 
   TABLE DATA           u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public               postgres    false    220   �       �           0    0    customer_product_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.customer_product_id_seq', 2, true);
          public               postgres    false    240            �           0    0    customers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.customers_id_seq', 2, true);
          public               postgres    false    238            �           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public               postgres    false    228            �           0    0    jobs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);
          public               postgres    false    225            �           0    0    leads_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.leads_id_seq', 5, true);
          public               postgres    false    234            �           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 9, true);
          public               postgres    false    217            �           0    0    pengguna_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.pengguna_id_seq', 3, true);
          public               postgres    false    230            �           0    0    products_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.products_id_seq', 5, true);
          public               postgres    false    232            �           0    0    projects_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.projects_id_seq', 5, true);
          public               postgres    false    236            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public               postgres    false    219            �           2606    17376    cache_locks cache_locks_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);
 F   ALTER TABLE ONLY public.cache_locks DROP CONSTRAINT cache_locks_pkey;
       public                 postgres    false    224            �           2606    17369    cache cache_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);
 :   ALTER TABLE ONLY public.cache DROP CONSTRAINT cache_pkey;
       public                 postgres    false    223            �           2606    17474 &   customer_product customer_product_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.customer_product
    ADD CONSTRAINT customer_product_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.customer_product DROP CONSTRAINT customer_product_pkey;
       public                 postgres    false    241            �           2606    17467     customers customers_email_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_email_unique UNIQUE (email);
 J   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_email_unique;
       public                 postgres    false    239            �           2606    17465    customers customers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public                 postgres    false    239            �           2606    17403    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public                 postgres    false    229            �           2606    17405 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public                 postgres    false    229            �           2606    17393    job_batches job_batches_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.job_batches DROP CONSTRAINT job_batches_pkey;
       public                 postgres    false    227            �           2606    17385    jobs jobs_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.jobs DROP CONSTRAINT jobs_pkey;
       public                 postgres    false    226            �           2606    17442    leads leads_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.leads
    ADD CONSTRAINT leads_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.leads DROP CONSTRAINT leads_email_unique;
       public                 postgres    false    235            �           2606    17435    leads leads_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.leads
    ADD CONSTRAINT leads_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.leads DROP CONSTRAINT leads_pkey;
       public                 postgres    false    235            �           2606    17335    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public                 postgres    false    218            �           2606    17353 0   password_reset_tokens password_reset_tokens_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);
 Z   ALTER TABLE ONLY public.password_reset_tokens DROP CONSTRAINT password_reset_tokens_pkey;
       public                 postgres    false    221            �           2606    17417    pengguna pengguna_email_unique 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pengguna
    ADD CONSTRAINT pengguna_email_unique UNIQUE (email);
 H   ALTER TABLE ONLY public.pengguna DROP CONSTRAINT pengguna_email_unique;
       public                 postgres    false    231            �           2606    17415    pengguna pengguna_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.pengguna
    ADD CONSTRAINT pengguna_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.pengguna DROP CONSTRAINT pengguna_pkey;
       public                 postgres    false    231            �           2606    17426    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public                 postgres    false    233            �           2606    17451    projects projects_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.projects DROP CONSTRAINT projects_pkey;
       public                 postgres    false    237            �           2606    17360    sessions sessions_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
       public                 postgres    false    222            �           2606    17346    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public                 postgres    false    220            �           2606    17344    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    220            �           1259    17386    jobs_queue_index    INDEX     B   CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);
 $   DROP INDEX public.jobs_queue_index;
       public                 postgres    false    226            �           1259    17362    sessions_last_activity_index    INDEX     Z   CREATE INDEX sessions_last_activity_index ON public.sessions USING btree (last_activity);
 0   DROP INDEX public.sessions_last_activity_index;
       public                 postgres    false    222            �           1259    17361    sessions_user_id_index    INDEX     N   CREATE INDEX sessions_user_id_index ON public.sessions USING btree (user_id);
 *   DROP INDEX public.sessions_user_id_index;
       public                 postgres    false    222                       2606    17475 5   customer_product customer_product_customer_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_product
    ADD CONSTRAINT customer_product_customer_id_foreign FOREIGN KEY (customer_id) REFERENCES public.customers(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.customer_product DROP CONSTRAINT customer_product_customer_id_foreign;
       public               postgres    false    239    4861    241                       2606    17480 4   customer_product customer_product_product_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_product
    ADD CONSTRAINT customer_product_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.customer_product DROP CONSTRAINT customer_product_product_id_foreign;
       public               postgres    false    233    241    4851                        2606    17436    leads leads_product_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.leads
    ADD CONSTRAINT leads_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.leads DROP CONSTRAINT leads_product_id_foreign;
       public               postgres    false    4851    235    233                       2606    17452 !   projects projects_lead_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_lead_id_foreign FOREIGN KEY (lead_id) REFERENCES public.leads(id) ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.projects DROP CONSTRAINT projects_lead_id_foreign;
       public               postgres    false    4855    237    235            �      x������ � �      �      x������ � �      �      x�3�4�4��".#N��c���� I��      �   t   x�m�1�0@��9�e;1�2� ,V�hM���+R�?=}��7�5(DH��[_���Z���4&MQ(0�N&�s֐՟�x�6`����m}a�;\c�A�~�t�g�n��G�%�      �      x������ � �      �      x������ � �      �      x������ � �      �   w   x�m�1�0@��9�e;1�2� ,V�hMP��+�����7�5(DH��[_>�8��zJ��(<|*�(L"'欒=�Z`�p�m���������w8�䃂|��3��.�{ÿ&y      �   �   x�e�K� ��5��|ܥ	A���F����>`$BH�߿e��.�M�`��&d��J���f��KW��� c��p8P��V��!�.[s�ʀ��u[��c�V7��&;���/P�R�):�9�\��ǉ~�B\��Q�7l�L	ӳ���s���v�      �      x������ � �      �     x���Ko�@��ï肭df���JQ���->��� 3����jL�.좛s���/_An^�%��u��F�j�~F:��	շ�Q��=����}��70�N�.s�M��d���iI��=��/�����C����z��(
A�ߡ�z��Q�72������/�� ���M,>��r.W[�G-u��0�#d�RI8�(#��_��/��F�;0 3����(6�,���$�89K���pM�J�e��M�${4y�w"��ֻ�ikCӴo9�z�      �   �   x��νn!�{
^�N�IU�v�P�k_�J��H}�8ɥ��.a�����(���M�����rr����[����(���k��I����8S#˹���fhr�6��q�.Gh��^m{��8�&�S���N���Tr*�P���?K��J���Pܮl�Ww�Ec�/�kPe _] Vn�s�ͪܧ��e�X�c�n�P���8�@W�'��8���A�<����;��      �   E   x�3�4�L,((�/KM�4202�50�52R04�25�26@3�25�2�4Ů�������]$����� f�@      �   n  x��TIo�0='��c+�Zl�$�zHBY�f1�[�b���뇴�Hs�9�Z�`�}~�����%Zt��� �N�l���g^F�[ tp�0Zk�  ��~��^w�ѣ��sw~���30������]$ល4��,^�G�H����7?8ZT�Ȓ���f��f�#@��9�6����5o�;�$Ғ��i\,夫y]���o���/ĵ�����H�;7HUفWj� ƪ�c-_{����;��j�K���sI/����9^X����@���.b�ey��r"e����G��h��9���$�-Lt�O�%��T�H��袗�I�	���K�2i�ٸM�x�����4|�\�!�� ���0�U�wa.�Rg�kXV�;́�LY��K��sJ�M{M�Th��ܘe��z~ YD�W"���D�u��u�śꛋ��Z�Ls�I��h�aU�0&s�K+�tA���#F��+�v��[M��+P&�
�!�������a���p�w�E�+� �����JJ��X]L��;mwS��O�k����>��H`z����(��(v�:�K)�A�꿂]�=�b(�����~��v�m�:�dIß���к�      �      x������ � �     