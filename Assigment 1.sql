PGDMP     :    '                 |            nodejs    15.1    15.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    49196    nodejs    DATABASE     ~   CREATE DATABASE nodejs WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Kazakhstan.1251';
    DROP DATABASE nodejs;
                postgres    false            �            1259    49198    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(256),
    username character varying(256),
    password character varying(256)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    49197    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    215            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    214            e           2604    49201    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �          0    49198    users 
   TABLE DATA           >   COPY public.users (id, email, username, password) FROM stdin;
    public          postgres    false    215   h
       �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 2, true);
          public          postgres    false    214            g           2606    49205    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    215            �   �   x�=��
�0  �{�K'Q�~�TZH�t٘���6��z� ��w�� ��YK��F��Cm����qZ�WV��@/�}z�UdT�)I�H��8��)������@��
9�Y��:u��_{�Ȟ�3K��]�U��}g�k.L��#G�vH訌�t���
�! ��T:�     