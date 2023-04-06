PGDMP     !    +                {        	   flms info    15.2    15.2 9    N           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            O           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            P           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            Q           1262    16514 	   flms info    DATABASE        CREATE DATABASE "flms info" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "flms info";
                postgres    false            �            1259    16533    actors    TABLE     �   CREATE TABLE public.actors (
    id integer NOT NULL,
    name character varying(200) DEFAULT 'noname'::character varying NOT NULL
);
    DROP TABLE public.actors;
       public         heap    postgres    false            �            1259    16532    actors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.actors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.actors_id_seq;
       public          postgres    false    219            R           0    0    actors_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.actors_id_seq OWNED BY public.actors.id;
          public          postgres    false    218            �            1259    16670    acts    TABLE     �   CREATE TABLE public.acts (
    id integer NOT NULL,
    name character varying(200) DEFAULT 'noname'::character varying NOT NULL
);
    DROP TABLE public.acts;
       public         heap    postgres    false            �            1259    16669    acts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.acts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.acts_id_seq;
       public          postgres    false    228            S           0    0    acts_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.acts_id_seq OWNED BY public.acts.id;
          public          postgres    false    227            �            1259    16653    cines    TABLE     �   CREATE TABLE public.cines (
    id integer NOT NULL,
    title character varying(200) DEFAULT 'noname'::character varying NOT NULL,
    direct_id integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.cines;
       public         heap    postgres    false            �            1259    16652    cines_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cines_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.cines_id_seq;
       public          postgres    false    224            T           0    0    cines_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.cines_id_seq OWNED BY public.cines.id;
          public          postgres    false    223            �            1259    16516 	   directors    TABLE     �   CREATE TABLE public.directors (
    id integer NOT NULL,
    director character varying(200) DEFAULT 'unknown'::character varying NOT NULL
);
    DROP TABLE public.directors;
       public         heap    postgres    false            �            1259    16515    directors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.directors_id_seq;
       public          postgres    false    215            U           0    0    directors_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.directors_id_seq OWNED BY public.directors.id;
          public          postgres    false    214            �            1259    16662    directs    TABLE     �   CREATE TABLE public.directs (
    id integer NOT NULL,
    direct character varying(200) DEFAULT 'unknown'::character varying NOT NULL
);
    DROP TABLE public.directs;
       public         heap    postgres    false            �            1259    16661    directs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.directs_id_seq;
       public          postgres    false    226            V           0    0    directs_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.directs_id_seq OWNED BY public.directs.id;
          public          postgres    false    225            �            1259    16677    film_actors    TABLE     s   CREATE TABLE public.film_actors (
    act_id integer DEFAULT 0 NOT NULL,
    cine_id integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.film_actors;
       public         heap    postgres    false            �            1259    16540    film_directors    TABLE     {   CREATE TABLE public.film_directors (
    director_id integer DEFAULT 0 NOT NULL,
    film_id integer DEFAULT 0 NOT NULL
);
 "   DROP TABLE public.film_directors;
       public         heap    postgres    false            �            1259    16524    films    TABLE     �   CREATE TABLE public.films (
    id integer NOT NULL,
    title character varying(200) DEFAULT 'noname'::character varying NOT NULL,
    director_id integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.films;
       public         heap    postgres    false            �            1259    16523    films_id_seq    SEQUENCE     �   CREATE SEQUENCE public.films_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.films_id_seq;
       public          postgres    false    217            W           0    0    films_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.films_id_seq OWNED BY public.films.id;
          public          postgres    false    216            �            1259    16577    movies    TABLE     �   CREATE TABLE public.movies (
    id integer NOT NULL,
    title character varying(200) DEFAULT 'noname'::character varying NOT NULL,
    direct_id integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.movies;
       public         heap    postgres    false            �            1259    16576    movies_id_seq    SEQUENCE     �   CREATE SEQUENCE public.movies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.movies_id_seq;
       public          postgres    false    222            X           0    0    movies_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.movies_id_seq OWNED BY public.movies.id;
          public          postgres    false    221            �           2604    16536 	   actors id    DEFAULT     f   ALTER TABLE ONLY public.actors ALTER COLUMN id SET DEFAULT nextval('public.actors_id_seq'::regclass);
 8   ALTER TABLE public.actors ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    16673    acts id    DEFAULT     b   ALTER TABLE ONLY public.acts ALTER COLUMN id SET DEFAULT nextval('public.acts_id_seq'::regclass);
 6   ALTER TABLE public.acts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            �           2604    16656    cines id    DEFAULT     d   ALTER TABLE ONLY public.cines ALTER COLUMN id SET DEFAULT nextval('public.cines_id_seq'::regclass);
 7   ALTER TABLE public.cines ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    16519    directors id    DEFAULT     l   ALTER TABLE ONLY public.directors ALTER COLUMN id SET DEFAULT nextval('public.directors_id_seq'::regclass);
 ;   ALTER TABLE public.directors ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    16665 
   directs id    DEFAULT     h   ALTER TABLE ONLY public.directs ALTER COLUMN id SET DEFAULT nextval('public.directs_id_seq'::regclass);
 9   ALTER TABLE public.directs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    16527    films id    DEFAULT     d   ALTER TABLE ONLY public.films ALTER COLUMN id SET DEFAULT nextval('public.films_id_seq'::regclass);
 7   ALTER TABLE public.films ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    16580 	   movies id    DEFAULT     f   ALTER TABLE ONLY public.movies ALTER COLUMN id SET DEFAULT nextval('public.movies_id_seq'::regclass);
 8   ALTER TABLE public.movies ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            A          0    16533    actors 
   TABLE DATA           *   COPY public.actors (id, name) FROM stdin;
    public          postgres    false    219   K9       J          0    16670    acts 
   TABLE DATA           (   COPY public.acts (id, name) FROM stdin;
    public          postgres    false    228   h9       F          0    16653    cines 
   TABLE DATA           5   COPY public.cines (id, title, direct_id) FROM stdin;
    public          postgres    false    224   �9       =          0    16516 	   directors 
   TABLE DATA           1   COPY public.directors (id, director) FROM stdin;
    public          postgres    false    215   _:       H          0    16662    directs 
   TABLE DATA           -   COPY public.directs (id, direct) FROM stdin;
    public          postgres    false    226   |:       K          0    16677    film_actors 
   TABLE DATA           6   COPY public.film_actors (act_id, cine_id) FROM stdin;
    public          postgres    false    229   �:       B          0    16540    film_directors 
   TABLE DATA           >   COPY public.film_directors (director_id, film_id) FROM stdin;
    public          postgres    false    220   ;       ?          0    16524    films 
   TABLE DATA           7   COPY public.films (id, title, director_id) FROM stdin;
    public          postgres    false    217   .;       D          0    16577    movies 
   TABLE DATA           6   COPY public.movies (id, title, direct_id) FROM stdin;
    public          postgres    false    222   K;       Y           0    0    actors_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.actors_id_seq', 1, false);
          public          postgres    false    218            Z           0    0    acts_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.acts_id_seq', 6, true);
          public          postgres    false    227            [           0    0    cines_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.cines_id_seq', 6, true);
          public          postgres    false    223            \           0    0    directors_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.directors_id_seq', 1, false);
          public          postgres    false    214            ]           0    0    directs_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.directs_id_seq', 4, true);
          public          postgres    false    225            ^           0    0    films_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.films_id_seq', 1, false);
          public          postgres    false    216            _           0    0    movies_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.movies_id_seq', 6, true);
          public          postgres    false    221            �           2606    16539    actors actors_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.actors
    ADD CONSTRAINT actors_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.actors DROP CONSTRAINT actors_pkey;
       public            postgres    false    219            �           2606    16676    acts acts_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.acts
    ADD CONSTRAINT acts_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.acts DROP CONSTRAINT acts_pkey;
       public            postgres    false    228            �           2606    16660    cines cines_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.cines
    ADD CONSTRAINT cines_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.cines DROP CONSTRAINT cines_pkey;
       public            postgres    false    224            �           2606    16522    directors directors_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.directors
    ADD CONSTRAINT directors_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.directors DROP CONSTRAINT directors_pkey;
       public            postgres    false    215            �           2606    16668    directs directs_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.directs
    ADD CONSTRAINT directs_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.directs DROP CONSTRAINT directs_pkey;
       public            postgres    false    226            �           2606    16531    films films_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.films
    ADD CONSTRAINT films_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.films DROP CONSTRAINT films_pkey;
       public            postgres    false    217            �           2606    16584    movies movies_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_pkey;
       public            postgres    false    222            A      x������ � �      J   l   x���
�0 �s�����]vs
��4�D�C�K�-B�����w���>Ӳ��^᭞��P*v0�Z��|D���ͧBO.%HV�F1�[��L�a g,伉�OƵE�� T      F   k   x�3�.��,�4�2���MͳRp�,*.Qp�I,.�4�2��HUpJ,�M��4�2�t��/K-J�L�I�M9]RS
��s�8���8K�s3��r��RR�"1z\\\ ��+      =      x������ � �      H   I   x�3��M,)QJM-K-�2�2R��K�3�9]�2S|R3K�3�L8�2�3J�3*ss�b���� ��[      K   ,   x���	 @��c19�I�u�<D�PJ3fIw�(5m����>{�a      B      x������ � �      ?      x������ � �      D   k   x�3�.��,�4�2���MͳRp�,*.Qp�I,.�4�2��HUpJ,�M��4�2�t��/K-J�L�I�M9]RS
��s�8���8K�s3��r��RR�"1z\\\ ��+     