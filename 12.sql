PGDMP     
                    {           films    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    films    DATABASE     y   CREATE DATABASE films WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE films;
                postgres    false            �            1259    16421    actors    TABLE     �   CREATE TABLE public.actors (
    id integer NOT NULL,
    name character varying(250) NOT NULL,
    age character varying(250) NOT NULL
);
    DROP TABLE public.actors;
       public         heap    postgres    false            �            1259    16430 	   directors    TABLE     �   CREATE TABLE public.directors (
    id integer NOT NULL,
    name character varying(250) NOT NULL,
    age character varying(250) NOT NULL
);
    DROP TABLE public.directors;
       public         heap    postgres    false            �            1259    16412    filmlist    TABLE     �   CREATE TABLE public.filmlist (
    id integer NOT NULL,
    title character varying(250) NOT NULL,
    year character varying(250) NOT NULL,
    screenwriter character varying(255)
);
    DROP TABLE public.filmlist;
       public         heap    postgres    false                      0    16421    actors 
   TABLE DATA           /   COPY public.actors (id, name, age) FROM stdin;
    public          postgres    false    215   g                 0    16430 	   directors 
   TABLE DATA           2   COPY public.directors (id, name, age) FROM stdin;
    public          postgres    false    216   �                 0    16412    filmlist 
   TABLE DATA           A   COPY public.filmlist (id, title, year, screenwriter) FROM stdin;
    public          postgres    false    214          q           2606    16429    actors actors_name_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.actors
    ADD CONSTRAINT actors_name_key UNIQUE (name);
 @   ALTER TABLE ONLY public.actors DROP CONSTRAINT actors_name_key;
       public            postgres    false    215            s           2606    16427    actors actors_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.actors
    ADD CONSTRAINT actors_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.actors DROP CONSTRAINT actors_pkey;
       public            postgres    false    215            u           2606    16438    directors directors_name_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.directors
    ADD CONSTRAINT directors_name_key UNIQUE (name);
 F   ALTER TABLE ONLY public.directors DROP CONSTRAINT directors_name_key;
       public            postgres    false    216            w           2606    16436    directors directors_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.directors
    ADD CONSTRAINT directors_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.directors DROP CONSTRAINT directors_pkey;
       public            postgres    false    216            m           2606    16418    filmlist filmlist_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.filmlist
    ADD CONSTRAINT filmlist_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.filmlist DROP CONSTRAINT filmlist_pkey;
       public            postgres    false    214            o           2606    16420    filmlist filmlist_title_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.filmlist
    ADD CONSTRAINT filmlist_title_key UNIQUE (title);
 E   ALTER TABLE ONLY public.filmlist DROP CONSTRAINT filmlist_title_key;
       public            postgres    false    214               w   x��=�@���S�	����0+,m&�q�0K�E����Ϡ�!L|o�oZ�,9�)�ʗ0��G�T�*%�"���=n��JPnJX$XC��+��O��@;���v�懔y�3���I!�            x������ � �         �   x�%��
�0 g�+��q�B�Щ�P��%�D#�`���oL��k�N�ls���:*�t�Up/�B9W�Vr�aJLaW<D�C�U(�x���&�i����"Ϧ�Q\)-�>GV���ABT�E��^8�. *u     