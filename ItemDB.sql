PGDMP                  	    {            ItemDB    16.0    16.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    ItemDB    DATABASE     �   CREATE DATABASE "ItemDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "ItemDB";
                postgres    false            �            1259    16400 
   itemmaster    TABLE     �   CREATE TABLE public.itemmaster (
    item_id integer NOT NULL,
    item_name character varying(50) NOT NULL,
    item_description character varying(100) NOT NULL,
    item_category character varying(50) NOT NULL
);
    DROP TABLE public.itemmaster;
       public         heap    postgres    false            �            1259    16399    itemmaster_item_id_seq    SEQUENCE     �   CREATE SEQUENCE public.itemmaster_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.itemmaster_item_id_seq;
       public          postgres    false    216            �           0    0    itemmaster_item_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.itemmaster_item_id_seq OWNED BY public.itemmaster.item_id;
          public          postgres    false    215            P           2604    16403    itemmaster item_id    DEFAULT     x   ALTER TABLE ONLY public.itemmaster ALTER COLUMN item_id SET DEFAULT nextval('public.itemmaster_item_id_seq'::regclass);
 A   ALTER TABLE public.itemmaster ALTER COLUMN item_id DROP DEFAULT;
       public          postgres    false    215    216    216            �          0    16400 
   itemmaster 
   TABLE DATA           Y   COPY public.itemmaster (item_id, item_name, item_description, item_category) FROM stdin;
    public          postgres    false    216   e       �           0    0    itemmaster_item_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.itemmaster_item_id_seq', 22, true);
          public          postgres    false    215            R           2606    16405    itemmaster itemmaster_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.itemmaster
    ADD CONSTRAINT itemmaster_pkey PRIMARY KEY (item_id);
 D   ALTER TABLE ONLY public.itemmaster DROP CONSTRAINT itemmaster_pkey;
       public            postgres    false    216            �   y   x�e�1�0 g�y��X!c�2����D
ve���{@tc;�p7\`$vA�F0��87r����
K���?CP2�Ԥ��n�`*�|Rj±���+1�	����D�;hd[��^��yB�7Z�1w     