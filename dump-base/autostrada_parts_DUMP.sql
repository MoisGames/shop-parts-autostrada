PGDMP                      |            autostrada_parts    16.0    16.0 8    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16648    autostrada_parts    DATABASE     �   CREATE DATABASE autostrada_parts WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1251';
     DROP DATABASE autostrada_parts;
                postgres    false                        2615    98655 
   auto_parts    SCHEMA        CREATE SCHEMA auto_parts;
    DROP SCHEMA auto_parts;
                postgres    false            �            1259    99025    basket    TABLE     �   CREATE TABLE auto_parts.basket (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer
);
    DROP TABLE auto_parts.basket;
    
   auto_parts         heap    postgres    false    5            �            1259    99024    basket_id_seq    SEQUENCE     �   CREATE SEQUENCE auto_parts.basket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE auto_parts.basket_id_seq;
    
   auto_parts          postgres    false    5    218            �           0    0    basket_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE auto_parts.basket_id_seq OWNED BY auto_parts.basket.id;
       
   auto_parts          postgres    false    217            �            1259    99079    basket_part    TABLE     �   CREATE TABLE auto_parts.basket_part (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "basketId" integer,
    "partId" integer
);
 #   DROP TABLE auto_parts.basket_part;
    
   auto_parts         heap    postgres    false    5            �            1259    99078    basket_part_id_seq    SEQUENCE     �   CREATE SEQUENCE auto_parts.basket_part_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE auto_parts.basket_part_id_seq;
    
   auto_parts          postgres    false    5    226            �           0    0    basket_part_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auto_parts.basket_part_id_seq OWNED BY auto_parts.basket_part.id;
       
   auto_parts          postgres    false    225            �            1259    99046    brand    TABLE     �   CREATE TABLE auto_parts.brand (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "categoryId" integer
);
    DROP TABLE auto_parts.brand;
    
   auto_parts         heap    postgres    false    5            �            1259    99045    brand_id_seq    SEQUENCE     �   CREATE SEQUENCE auto_parts.brand_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE auto_parts.brand_id_seq;
    
   auto_parts          postgres    false    5    222            �           0    0    brand_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auto_parts.brand_id_seq OWNED BY auto_parts.brand.id;
       
   auto_parts          postgres    false    221            �            1259    99037    category    TABLE     �   CREATE TABLE auto_parts.category (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
     DROP TABLE auto_parts.category;
    
   auto_parts         heap    postgres    false    5            �            1259    99036    category_id_seq    SEQUENCE     �   CREATE SEQUENCE auto_parts.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE auto_parts.category_id_seq;
    
   auto_parts          postgres    false    220    5            �           0    0    category_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE auto_parts.category_id_seq OWNED BY auto_parts.category.id;
       
   auto_parts          postgres    false    219            �            1259    99060    part    TABLE     F  CREATE TABLE auto_parts.part (
    id integer NOT NULL,
    groups character varying(255) NOT NULL,
    brands character varying(255) NOT NULL,
    number_brand character varying(400) NOT NULL,
    analogue character varying(2550) NOT NULL,
    name_parts character varying(255) NOT NULL,
    price integer,
    diksona integer,
    semaf integer,
    lado integer,
    kalinina integer,
    img character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "brandId" integer,
    "categoryId" integer
);
    DROP TABLE auto_parts.part;
    
   auto_parts         heap    postgres    false    5            �            1259    99059    part_id_seq    SEQUENCE     �   CREATE SEQUENCE auto_parts.part_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE auto_parts.part_id_seq;
    
   auto_parts          postgres    false    224    5            �           0    0    part_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auto_parts.part_id_seq OWNED BY auto_parts.part.id;
       
   auto_parts          postgres    false    223            �            1259    99013    user    TABLE     ,  CREATE TABLE auto_parts."user" (
    id integer NOT NULL,
    email character varying(255),
    password character varying(255),
    role character varying(255) DEFAULT 'USER'::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE auto_parts."user";
    
   auto_parts         heap    postgres    false    5            �            1259    99012    user_id_seq    SEQUENCE     �   CREATE SEQUENCE auto_parts.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE auto_parts.user_id_seq;
    
   auto_parts          postgres    false    216    5            �           0    0    user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auto_parts.user_id_seq OWNED BY auto_parts."user".id;
       
   auto_parts          postgres    false    215            5           2604    99028 	   basket id    DEFAULT     n   ALTER TABLE ONLY auto_parts.basket ALTER COLUMN id SET DEFAULT nextval('auto_parts.basket_id_seq'::regclass);
 <   ALTER TABLE auto_parts.basket ALTER COLUMN id DROP DEFAULT;
    
   auto_parts          postgres    false    217    218    218            9           2604    99082    basket_part id    DEFAULT     x   ALTER TABLE ONLY auto_parts.basket_part ALTER COLUMN id SET DEFAULT nextval('auto_parts.basket_part_id_seq'::regclass);
 A   ALTER TABLE auto_parts.basket_part ALTER COLUMN id DROP DEFAULT;
    
   auto_parts          postgres    false    225    226    226            7           2604    99049    brand id    DEFAULT     l   ALTER TABLE ONLY auto_parts.brand ALTER COLUMN id SET DEFAULT nextval('auto_parts.brand_id_seq'::regclass);
 ;   ALTER TABLE auto_parts.brand ALTER COLUMN id DROP DEFAULT;
    
   auto_parts          postgres    false    222    221    222            6           2604    99040    category id    DEFAULT     r   ALTER TABLE ONLY auto_parts.category ALTER COLUMN id SET DEFAULT nextval('auto_parts.category_id_seq'::regclass);
 >   ALTER TABLE auto_parts.category ALTER COLUMN id DROP DEFAULT;
    
   auto_parts          postgres    false    220    219    220            8           2604    99063    part id    DEFAULT     j   ALTER TABLE ONLY auto_parts.part ALTER COLUMN id SET DEFAULT nextval('auto_parts.part_id_seq'::regclass);
 :   ALTER TABLE auto_parts.part ALTER COLUMN id DROP DEFAULT;
    
   auto_parts          postgres    false    223    224    224            3           2604    99016    user id    DEFAULT     l   ALTER TABLE ONLY auto_parts."user" ALTER COLUMN id SET DEFAULT nextval('auto_parts.user_id_seq'::regclass);
 <   ALTER TABLE auto_parts."user" ALTER COLUMN id DROP DEFAULT;
    
   auto_parts          postgres    false    216    215    216            �          0    99025    basket 
   TABLE DATA           L   COPY auto_parts.basket (id, "createdAt", "updatedAt", "userId") FROM stdin;
 
   auto_parts          postgres    false    218   �C       �          0    99079    basket_part 
   TABLE DATA           ]   COPY auto_parts.basket_part (id, "createdAt", "updatedAt", "basketId", "partId") FROM stdin;
 
   auto_parts          postgres    false    226   �C       �          0    99046    brand 
   TABLE DATA           U   COPY auto_parts.brand (id, name, "createdAt", "updatedAt", "categoryId") FROM stdin;
 
   auto_parts          postgres    false    222   �C       �          0    99037    category 
   TABLE DATA           J   COPY auto_parts.category (id, name, "createdAt", "updatedAt") FROM stdin;
 
   auto_parts          postgres    false    220   �D       �          0    99060    part 
   TABLE DATA           �   COPY auto_parts.part (id, groups, brands, number_brand, analogue, name_parts, price, diksona, semaf, lado, kalinina, img, "createdAt", "updatedAt", "brandId", "categoryId") FROM stdin;
 
   auto_parts          postgres    false    224   ]E       �          0    99013    user 
   TABLE DATA           Y   COPY auto_parts."user" (id, email, password, role, "createdAt", "updatedAt") FROM stdin;
 
   auto_parts          postgres    false    216   Y�       �           0    0    basket_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('auto_parts.basket_id_seq', 1, false);
       
   auto_parts          postgres    false    217            �           0    0    basket_part_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('auto_parts.basket_part_id_seq', 1, false);
       
   auto_parts          postgres    false    225            �           0    0    brand_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auto_parts.brand_id_seq', 1, false);
       
   auto_parts          postgres    false    221            �           0    0    category_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('auto_parts.category_id_seq', 1, false);
       
   auto_parts          postgres    false    219            �           0    0    part_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auto_parts.part_id_seq', 1, false);
       
   auto_parts          postgres    false    223            �           0    0    user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auto_parts.user_id_seq', 1, false);
       
   auto_parts          postgres    false    215            K           2606    99084    basket_part basket_part_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY auto_parts.basket_part
    ADD CONSTRAINT basket_part_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY auto_parts.basket_part DROP CONSTRAINT basket_part_pkey;
    
   auto_parts            postgres    false    226            ?           2606    99030    basket basket_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY auto_parts.basket
    ADD CONSTRAINT basket_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY auto_parts.basket DROP CONSTRAINT basket_pkey;
    
   auto_parts            postgres    false    218            E           2606    99053    brand brand_name_key 
   CONSTRAINT     S   ALTER TABLE ONLY auto_parts.brand
    ADD CONSTRAINT brand_name_key UNIQUE (name);
 B   ALTER TABLE ONLY auto_parts.brand DROP CONSTRAINT brand_name_key;
    
   auto_parts            postgres    false    222            G           2606    99051    brand brand_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY auto_parts.brand
    ADD CONSTRAINT brand_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY auto_parts.brand DROP CONSTRAINT brand_pkey;
    
   auto_parts            postgres    false    222            A           2606    99044    category category_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY auto_parts.category
    ADD CONSTRAINT category_name_key UNIQUE (name);
 H   ALTER TABLE ONLY auto_parts.category DROP CONSTRAINT category_name_key;
    
   auto_parts            postgres    false    220            C           2606    99042    category category_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY auto_parts.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY auto_parts.category DROP CONSTRAINT category_pkey;
    
   auto_parts            postgres    false    220            I           2606    99067    part part_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY auto_parts.part
    ADD CONSTRAINT part_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY auto_parts.part DROP CONSTRAINT part_pkey;
    
   auto_parts            postgres    false    224            ;           2606    99023    user user_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY auto_parts."user"
    ADD CONSTRAINT user_email_key UNIQUE (email);
 C   ALTER TABLE ONLY auto_parts."user" DROP CONSTRAINT user_email_key;
    
   auto_parts            postgres    false    216            =           2606    99021    user user_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY auto_parts."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY auto_parts."user" DROP CONSTRAINT user_pkey;
    
   auto_parts            postgres    false    216            P           2606    99085 %   basket_part basket_part_basketId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auto_parts.basket_part
    ADD CONSTRAINT "basket_part_basketId_fkey" FOREIGN KEY ("basketId") REFERENCES auto_parts.basket(id) ON UPDATE CASCADE ON DELETE SET NULL;
 U   ALTER TABLE ONLY auto_parts.basket_part DROP CONSTRAINT "basket_part_basketId_fkey";
    
   auto_parts          postgres    false    226    218    4671            Q           2606    99090 #   basket_part basket_part_partId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auto_parts.basket_part
    ADD CONSTRAINT "basket_part_partId_fkey" FOREIGN KEY ("partId") REFERENCES auto_parts.part(id) ON UPDATE CASCADE ON DELETE SET NULL;
 S   ALTER TABLE ONLY auto_parts.basket_part DROP CONSTRAINT "basket_part_partId_fkey";
    
   auto_parts          postgres    false    224    4681    226            L           2606    99031    basket basket_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auto_parts.basket
    ADD CONSTRAINT "basket_userId_fkey" FOREIGN KEY ("userId") REFERENCES auto_parts."user"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 I   ALTER TABLE ONLY auto_parts.basket DROP CONSTRAINT "basket_userId_fkey";
    
   auto_parts          postgres    false    216    4669    218            M           2606    99054    brand brand_categoryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auto_parts.brand
    ADD CONSTRAINT "brand_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES auto_parts.category(id) ON UPDATE CASCADE ON DELETE SET NULL;
 K   ALTER TABLE ONLY auto_parts.brand DROP CONSTRAINT "brand_categoryId_fkey";
    
   auto_parts          postgres    false    220    222    4675            N           2606    99068    part part_brandId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auto_parts.part
    ADD CONSTRAINT "part_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES auto_parts.brand(id) ON UPDATE CASCADE ON DELETE SET NULL;
 F   ALTER TABLE ONLY auto_parts.part DROP CONSTRAINT "part_brandId_fkey";
    
   auto_parts          postgres    false    4679    222    224            O           2606    99073    part part_categoryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auto_parts.part
    ADD CONSTRAINT "part_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES auto_parts.category(id) ON UPDATE CASCADE ON DELETE SET NULL;
 I   ALTER TABLE ONLY auto_parts.part DROP CONSTRAINT "part_categoryId_fkey";
    
   auto_parts          postgres    false    4675    224    220            �      x������ � �      �      x������ � �      �   �   x�u�1�AE��SL�.]�Vw����L,���h�&���6a�+���1XѦM*����������O��3_���>G��@���r5Ebu�LE�w�AВ4�D�0�ǀ�DN�O|-V|*���}́7|�Y+�e8 ݤ��=���"�X��t6�3�	qP��*[�À�Q:/鬚�Ӭuz��0]�Ϻ��=+u�����߲a�>Ã)�.�{�      �   �   x�3320�0�¦�M�]��/츰�bυ�@�V�І��v_��id`d�k`�k`�`ddedlej�Ԍ]�����a��.��2�ߡpaЎ~�(X^�K�M2�nT�����Ќ�;���H�B7��%Pa�=... Vy�      �      x��[�dKv����x��͌�EoY�S���ggv��^(�H���mf�H���������!gF�� �����{�ά�̈��)A<<����;"��b�b�
���n����>���=~������ǿz��ǿz��z���?������G�����G3��_=��������~��J�������J��G�x�-����O��kh���a�����������df�q/Uz���1��������s���O�`���9�ft�LtF?�}HVXn�&�7���w����Zef�E�iJ�h�D4�h.\������a�ga�����_<~{��c��`�o���?�~~���O����i?��G��g�l��#�����.8�g 8	+�o�_��wq��o�hK�ۙ�ɂ�R�?-��6�O��o˻#�����,= �G҈f:8�r-9Ϫ]A�σs4�=RC�*��}B���H_�C��-HJQ��.���Ǫ���^ӎ�y�,�O�׊"����&�H_j�{�(��	����4kT{@/���-�8=j%�fC;jq�
Q�T�y�;�'���oq���>cz}�!�햗7��·��o�ᯡ?�~Y�"��H�3�[��uq(�i�E5W��n>�ݕ��W{�>�聿吧v��<o��5�Lr��C��ǟ_ ��������8X�p/�=��D�[j���y�L1O��A�#	j���5i��e�}j�#���6i���3�v]ֻ�v[�<o�5��v����Ϫ�C+d}C|��^?�FH	�'����� ��?<�?G��<o�=is��U� ?�|��a�����^`Pz�"M+B�ǿ�������?�ˤTq��������f�g���?����X>�-��Ǐ���_����Zl�7��:#�S+���|�*��I��p���������y�����9�\�N?�����T������'�������?�9
�B������?�s��yk��P����ׁ35�+0'�T�?A������Z���IZ�X7����3pǂ���D�e���������t�� /�hA.�;2;Q>����6z@iy����%��~v��:���j������J��yUg�����R��(�����ŶG3�������TѶ�������&(h���o�9��g�Z%efFnJ�z=����7
��YtY�z�N�'�Ҷ�xX1�nBƭ�F�-p��CX�ʎj~�ʔ��K�{ˤ`�)D�U�&���(�@d��<#�oe1�[�u�N��i4�Z�yfΓ��*���W��ޢCPNT!�Ay5[���+�ܲ{�x��׋n����Z*e݋�m��ax^}����Ó-��m�|�9��C����o�/�7N�`�����f�B���/��Y�_�_��|k@�h�O�s�O�8��yP�|�*Ge�C��k{�l�\���٫\z����VZ�x�2���>��?�����d����PlR?��#��^-�����ǿ���t0�P_�#��eN��l@���|��1��ۮ"��0]�|�^�k� @w�0�۽�������?_|�:�b�'n���&����`W��k$�����c�|NF���Ӆ���W_좣�q\�ˋ��%p&�'����Ń��u ���+�(E�8�9�AG@[X�� (�!��?{f`%h����y�
�4��Zk^����ݲz>���tɂB⚍X������I��4��1�Y��,�	���mÌ`�����8�m���q�G�|`{y�K=fO0�f"q��0�_��X|+P>��+�/���mwy;/ڼ� ��r��?�\E��j���I�I�&ڐh�hw&�OI�˳T	uM�� ���t�"�oE�?�[��D�Ϛ� <Oa ��7���䁴�)@G���{G�!��͜h��$�j���<So�z.��/��W*�j�
��pxàM�5��:�@_mB�>
���j��&��$Ԗ[��[�Z[uS��\X9�bhC��R�!:�#p�i�@<�9�D�Q��f�h뙔�����ڝHGG`mK�!c�s���:�%���#[��ɶ�H��#��7o���r�y>�E��ڄ��1[ĕ,3�Ҽ�2X2�e����">��k�����sϳ�C�0���q�DX��8�6��r���3I�X��j��y����9q�ed�aH�T�"g�PL��_d~ X�Ք3oĀ�0J�& �)~t�I��h�,6��Z)��u���|צڂF_��Kz���êD3a����2�v9�h��C@唾�0H�}�q�l���]��i����nLc7��{Bc�Oc7����hh��V|VM!M�qL�˙�]�}Nؠ����٠6ǳ�m�V��-��&8�Ղ�[{-��B3;ӹ�����z���Z�a@����bŨS��hɔ������Eo�zS�]�O��Т2���(��`dwI��I��1��ܼ�Uw�5������{E�g��&{��,300�5��+;|&����d,��6�@��ݎ�v�k����λA�B׃���"fY�*�R�?;����|����|�٧�sJ�х�L�L���Z�_%�mp����T��wz�y���-�?_���+����|0������waкk;lT�A�#K[�W�{Y�h׷�f/}΋��\�����7���y;�{��t�wj�|i�Ԧa���H��.��ό3�� G��[z�Bܭ�[��ւ����\�$z��j�������j��F���y���^�<gV�j�DF��G\���8kޟ�_ϊ'�k򑍈��`�����@�![�K�ƫ�c����X'�� ne;���l�S�UrJ��ov��)���������5$h��D��sq擢$ޭ��MS/	��� �� ��s��
t��mAR��R&���b�>6 2e�.G���4'�x�p5p�1�n���}�X���F��8%���?ڹ/p@�}��/1i_��n���ռ�`�=������VP���6���-l�N0ljҷOx}�\����!4I�MT�+$Mэ)��hԥ*�m��O�Ƣ�N�,����
��`�uw���7�ީ��"ԡ��s��ڗ	Z g�� Gܰ೮2@Z��HGo��ěH*�ƒg� ��>��~�{F�ZH)��VZ�� ��u �d���H�yJۃ��gh��91�1�l�ˊ��vC�# �1V��L���5CQ*�5������W���-��=vq�\,��:��ν�4�I�}�����I:��6[�����/��Y��Om��K�B��lU1c˛-1��P�]R�`%ό�4g	��qָ|0�����&�jxL��x~��W�3�~�u}�	}V�t���h5�\"�[sR�����q&���<V���]�;{��ySϊ��� 
�e.��,>"���.��@��2sY����p>h Z]�^
�C�E{�3oˊR7�O���7�D�T����=·I$�2{Q�A���H�
��45����	������a�Hq!5�\�~8Oz�����{j���j3/�sj�A�o}`���>[ d�����󥸹aC���U�A��P����gh���F�<���+���"��ݿg�|�w���gGszz�3��W#�a�9̌҆�U4~w�s��ʎv}���p��v�v[�qp�O��h�i#'�4�I&�y.)�R���N�F���v |1!]-8Ƴ����@_����e-i�,߬p��n��=,�[AaΒ�Wo�pw����k�����k��-�X��DH�4��X�Th���`�Ȭ��{���`�,����_�AnS/��;���rZ�^/�V�%X�˱�/��������|�{JkڧՏh5cZ�1�ݘ�n�����Vu@��Z�4&�����$�����.�;����O;�O�F�k�B�����A-:6��x�M�͛q��P�f 9`!�>l��)��ë�zL��3��Sy�	���ɘ�?�)�L�U��r�nos�>oO?�ɺ��h�/RᓲqH/    �?�Ij��`1�Q>u��hM��ZPB怏M6�c[��ҁU�����ێ���w̭ը`��ȭ��;��ش��ΦͲ��<eYz6,c��.��L`��@�&��[��őq�Aː0��h����:ıL	�2�?�)�Y1�����OhM#Z���=b�#j�f���=j��*����cj�Y�P1Z�K�.�M2�ը����3��s�݈�!�j.L�z�K ٧�aGíw�Ո5�ō�Q(%*�E�_�j�܋j��U~�������l2O�Í�Ucj�cj�{Ԛ}j�{��j�!���Z=���9���}�sb�!t���u7�f�;��o�9�Z�;��*��*@�`o(���7��Σ��Wq�6��0�^<�nT����;!��3�x�J�ؗ�0�u����V��J�z�5���W Ak7�j���i�1�nkw���z݇J�d�&��?���3桱�|�Mon��D��W����O�K+ɗSE[�2�����Nj7Wq7Ui��Ҿr�-��;�D�g�b?�� U��Ny�瑮�?z��?�l��ƴwc��̀|�YF������ЮhW���1�Ռ��t:��r�L�$��O�4Y�yl�)1�<��]uۼ<v�[��a@��$���v���f^tWg��B,��V����X�]�Y7_� d����~�"�T�H��Ncl����x^�:�3���7/���>�ǣy��׋�;�8~��98���Cѥ:��ݥ�x$�Khlw��އ��ЇV�����uh��C#���>��G����D=O�xt'�rtkq�w�GO��OHi7�b<�����pjv��������h�z ͬ7����X�9��}�f}����}_E��dsDt�r~y�����fFn�($nv!qxu�$�Cᶾ"��_�х4Zm��P��,�{z�?�l���&!�Fև	c�c�����{�=5�>E�9$�����4Ws�?��pˏ�֦m��������a���,�$�&��4��8�1��%�ʽJVq��(�*6��E���5rZ�8�r�"V�oGrֹ,��3 iޖ�ZSmBF���[8�e���K�J�V�˂y��3��>�U���AD��6qLK7��;����DZFI.Ul>^���C�ԧh�E�i�2ʇ�]͗��}QZ6m3��{������>!�?#8�\�! �a�-ڧ���@�K��V�)1j��4Js�{��p�đ/��N�f�Ӿ/��ھ��L3��fpu�`�BP�=����=F׍�u{躽{���ϙ��u{�t��4fǧ�B�a#�I9��,I3�F�c���Y��u�E�����-���D�Q�������������wo�]q;��F��8J�sn�uc���HO����{_�Ǌ���$R�%+���4Ǿq�����d�D#;=�5^���քGQy(�Ff��qv<����QZ;ΣL{�8%]��<�~��0�=U�ixy�aLU7�j?պ=���h8�nG�SU=��p):�gZ·wt�u�\w�����'+[v��b{��Q�q�&�`��~�]��q5@�	+��ʎ�=��( �iR7��l�S�G}�yo���~���c��ۧB�F�b��|;`�j����CZ;Q���V?�]�Yݎ�o˄�'xC���ju�Q���r���O�7�.����Q�H��?�8�FBj�KB��<hAHC;�n����
o^ɣ�ȿ;@���j��
��!Ɯ� ��+�ڞ��e$�Iǻ*���h�͑��Cd����]Y���m��B�E���^�B����[��g�R�����3Ψ����PY�u�*{�v[�:��sڑPo�+�Ǩʵ�\����T��w�*x��w�uE�[g�[����G;:��3�I8_u&����qs�֢0ZE�A�2�K���7���)n�(��̈́�z�i��k5�s�J*������s�5�ĺڻ�K���/�E�.s�U��T�7��[@U7&k���[#���\���'�;Y]���n�\~���j��p!2���"��?S�0C�މ|:GA�,�9jݝ�	�0<�yB��Hs�^FS?`Y&�!�V3��z<��CE�2~e��3�iuE��q��)�7w�d	l�Ҭ?�W\�
��b��lu�������Ntg�զ+捩�̃�pY8��lZǌ�V�l29х��/��Knf�B����j'���<a��ʨ�,���ΚF�K�k�S����o�ۼ������f��~5җtk���ė�ډ�F	
5<ܪt.A/�/�]�O�ƾ��_\�oE5K_]����llx5o�WPL\��B�ڪ���{ֳ�x��%y@��{�Jy�2�DӪ����y�a@��jc�{a4R��1&؎�хJ>,�r"4os�]��5 �L#�!�V�tt= 7 �����7`�D���u��q�e3PYK&Z �V��V0o���(͛c�%I���C�d��ѭ�������q�1��U�`�HP�V�W�\S��H)
*X�Ҫt��3Mm����(��׍��울f|�z��k(�d�o2��#�U,��~�P<��/7�Es��z��;���j_����r�T��z@Z��Z�{'��͐)���B!����gk-I��hT��|��O'���>�{�e9����懟oq?� E^Mw7�ȰG�7��!�X��y��q�-K��Ó*0��ꋏ�̶.W�Imn5�<h�p�!]4h/(:���p9�'#���i/q�9/代<��(��<Atg�YWhN���>7#=�D�:�I�[\�F��8z��%��u�Y�]�}q������Z_(��[��?�x�-��%���B3z�\>]��A�ߺ	�T�2>���_obGm��^�@�U�X=�tI
4\��D��S!
0����TZ�+x"�k���y����ޡ�Q=?I]`�����A����k� �l�R�]B{D�\��ޞh�.��"���*��=?�@]�B�D�f��vX�!{�[�!N]h����Ҽ΁�~��c���ԅ�\T���'�k�\��d܇ϒ[_��ه J:4�G֢�#*�7�1�\QF] Ip��fk�u�0�.��`x���8���]�Cy>?������⫙M^8 ��B2���t4=n<E��ڛ�*^%
d�h):�B�n�p���H%�\ˤf�����
o>[�.�_X�WC+\D��n�cq���%7 Q�&R��|������F�ll�*�UI0W�{��CW�m��bh�m����a�C�Zᶲ���֥t����Z���ý�#4�@�wk�ښo�=j>X'h�7ъ��Uέ��C�W�ޖ�Em,�x_aZ��� �_�kX��S�ꧮQj�M��J�$/�tw9�6����y�(T�|�3�I��B{T	)�������jW�{�Ir���n�k����=a�wK�t��T����m>y�K�l�ݑ������agX����Cisʎ��D�Ą�ύ�q�{ ��F:�t�� z���^�Z��\����Gw2���*H�t!�f�J��	����xC�B�^R���PL4�{mcѓ����E��
��&�fQ�wHq�z�w�hp`�{��V�HA��si���v�;�ڛ�,3���<JP��(���{H�[�>(�>]��OkL�Yz���_=3��j�T��P��
�0���)~��~ H��ȟ�X_��Z��Î3@q/vA_���_��O���c��=���/��Ł��>Y���H�d9�ؾ�<&�!�����������$#�Eiٮ�#�qɑ׼Q"�)튗W��:z$��	��ݠ5�`��X,=�����D̊_�ǅ�%-�[���',��
#� �+��;M�Wseﰌ��D	��ή�W�F�1j�M~y�*1nDw�P4����ł����5x&���^�3d^mM�=��C�K�P��K2V��쟣 =�����x����v�?}�i��R���zP��Ǹ<��g��Q�E�uO�U�aW�h o/���LQ��竴�y���;������6���>k;d���#�F�{P�\?��-|,_��b�ǟ/a�߹����zD>~��^�6�£���|i    ��T/�a	�5�$4X�E�����:�yјuɖL�Mԝ�w"��`����=,����b�իI�.DQO>��k$�M������-��fx��r�X�12��ro�-O���&�f����ں޳��K�`�R�9Kz� �=$F����8�bm�Q�X����5/1P�d�ī;��@6^Uo�Q�h�d9�u�����d�B�W�ʜv"0�af��Mv�.�#ղ`bs1����S����b��o��9��Es� L�r���ԯ|�Bj��%�U}Ug�������f��m)g���� �'��j]=[<�&6��s�Ư��]��h�}�y�����C�/ͲH�%n)���[�� ����r~ 	ނ��m��~�=G�{7b5�ak����/�,Ca<0σ#T�U����lA�fiK'Pi���`F��&,�NY˖&j�W�ҹS�@aEuUn���]�l�mi�PhDaE�ޯ��)ʚp�}.h�^?����ֲ(����o)�w���]h��bi���;K'��ikLwk��J��Q�<�XN0�n��A�@��Q��-	"��y��,� ��;(�v�:�rW1k�lՙ��4��n�A-&�'`ߘw���7w���vU��:{9�2#˽9d3F��,2�����L=hX��a�kDnMq_b�P��ϭ�J�B`4�T�w��è����0��ZaX��[����^v�PD�E�u��R�|�Q5?p���dh�Qtc�q�Rᶾj6��:W.p�ӕCn�QoTSka�t�~��X���pg��7���.����6|޿N��O��!�v�+ޙ���ʙ���͉�]7�,�.�@ʞ���f�����n6]\�-4Wl1���v]�=�	���)�Yͼz3��TP��+ls,������?�����_�iM�ǜw
��`j�kv��mZ�h�%3��IX��`�.`v�w3�RI��"���#D�ꪢ8sՙ�J�U�C�<P�֣�gŚXn�ք�ɮ'�,�vW�Kϯ���x|6�����
����)'|�P��]�K��Y- 6/O-��� �5��v=��P{4s�[ ��c���$	8z9C�9>�����5�@��]!��HҋH���
UD�9Ҙ����NtC8�n�S���0a6Q
s�[���m�Z�x�H|SX�U+ܣ��T�pb��Mٜ4����i*��/�Ƭ>�9���N�5�p��難�c��
�qV�j�Fu���w��R�W+Y6��b׀"�X
��*J$��"�:�~�fj����D$�j�:�>Jr7K^8gEW�6���ڃ�GJ�����<�0�K�VU�
�λ����zwO����$C�>���9o����!��˫`��K�g�0,�%{���Ec(��>E<$�	oR7"���qb�Ee4cj��%W����@/��%�֐���4D�B�z�=���;��De�B�ͭ�8	Ts署:�����z-m�m��i�L��x��QZ���	�֘�D=Ѫ�q��i�҆XU�1غ��5�%{�f�>0W���D�bD �"O�@c����F��3�qME�h���VL���z�~�,�5��$fG�+0�P]?��Ԩb��̊�6��Q͆�?��H�����-e�>�HW-�l�m������r�^04t�*%��
GX�KU\g�c>A�_r��-�����'�(��M'��(.��0�U�7��������3�ԍ�@j�gf2�sܚ�׵R��*V�h�q|M�L����������W�׋ID��RM�����[NV�a!�5f� Ϧ�R�DG%����?�	,����� W):Ut6=��.f0^����X3�藵���V��V��5J�Z�n�KJu;F&����*��q�l��Q��Q��^��'��f������*�x��^�`�1�1֭�YB��ۙo�54�D'��}��j�>v����8�bm�!Q,SnG�J�yu�[_e��#�8�$Qۜ���L�c��3�6���ã���;���<��Ufw�����uo���fx�:/)}��*	�$�~pa�q4J�M��=�$���*�u
��a��8C��h���j�Ɣ��r ���^��gsj���A.�1�N���;����Jr�s
5>��ZO0q��6Q�\#ȳW�
2�z�qp��	р-��,ƈ��U�+�)�m�,��ÏT7�a�f7�%�LUK�1k��#�!��qj���,����*)�`9�d�i6�0����q�a=�����LEpqU��v<��$��{��9 �>g���I���g�ѫ�M$�̹J2gv�b"&X\u��.��1+j����B���a���̈\�_��#��h�Rt�̉��t�ج?lM�-8��	�q�X�l�*�'-<l���~X�ubC�xp]t���*��a�	cp3�b��ʩ*����	gbA���!v�r�z�f��[��1���1��5k�v_)u��~�s�9) �J!�H�&k��+JL!ҽz�v�����2w�����EK
"�A��A���@Lvס�Sk��׺�`��a���Gy�M?m�~��+��v�\�I�b��@�3��+��&<�p<Փ:����W��D����M�nbNL���viUz2�ũ0�d�N��P�,������3��Q���h�حh��<�k"���,:j�q2�q[���\pQ�U� �z�6`����G�i-����'\G�4��#m��W�Z���֦�U��B��?�f�t�W����� p\L0��߷���SE�y�Tݷ5ǆoq���c*��=�-������W�pX����Ӵ6e��:�9SE/谱�`�ˆiE?i��5X���H^?s��H���_I��4�����")W�O9�����b��%���ʵv�؂��Kޟ�(��!ΜX��AW�&�ɢq�f�?�M)z�H��t7�+u|��(�;���Jwd��l*����R����_�9�^�dz8��Qd�[��fi��E��M��u�7������W����E�w!�5Ɵ���eAC�H�ե��©ǡF��bW���G��ނ3��({,�A�����6X��z�X�_4.P��bb�nK�[a��ƻ
�2���S`��z�|ܵ���h�j kbx�8�לݗ6uGйPH�������!��rHj�HFR�O7�&kr"�5�4`�2e��G�X��b��a����� ZU1�)����iz�Y-���Uݼ�}�����:�La�;~3�UK���ZN���E���=.��`EUo��2�,+���q���-y��Z7�qU������mQ�Xc���MG���g���E��UП(ʧ�F-2�{�1NH3L#U��	�*�L�NH��<�[tU��*:�F�Q����CO�ۈU<kV��%�'{2��qD����{�7?UGgL2n*+�:SuV=X�%+�Ƥa"-B }�X<�L �ݛ�q�M̒��z�ൎ�YDʰ#f��0����UN����@�9����z�P'֦��]%������5�>G�S�Z��[�.����`����n�aX�+۬;�������b�IX���9?����V)G*�!����/�Du�m	on޼�s���<�a3�
I�=�!�l����/���>���R~uܢ���u�����m�5x�?��B/�d:$�&P-o!er��A��[��}u���䯊XO[��	(�yd����t�%{r�zG�zۋg����.j弤���*�Ʌۀ�IV�����pd��.k�Y�Rh�4��Q�Eo/�O���L�i�-�M���{���q�1��A���*I(�{<~O/a�*N�L�N��J�a1��E�2"I݊W��`xQU���l1��1�#��F���%�x3e�5��*�M&�q`am�9��p[������/���	�U�M�b@Ӕ��Н� {��e�q�,��p�[@��_�V�Jt�}En����h>7z�����Fy��)�ک����	+"��e{V����F�ϵ�CWG�8.�*z�+U�gN    �[�w��|�ŷ�*�:&:��0��5��lL?��䌫�%�eɽL5���YN��L�	���àC/O:�?C�]U��즌1�B�ˈ����*޾TzpI��4w�{��K�R�lg^��G!W�L.���Zp��!�9�?���e�%��@|s|���QR"�}s�P�3�0��QZ��{y"Ѭa�{5��V�IJr$�fy�+SB��B�ݍ+��w�B��T����5��*��6�ȱ.d�O�mq/Z2�чXu(�^M���Jc�l\|ue��q�SL~��wJ�&�W�	��4��X�BVd���
��n�r�(;��h@��89;魉��wwe�|D�ѝsn#Oo�k~��
��]�E�
�\qª����-���[�e�{�_����wzW6�Қ%�VG^����Y�O]�����eٝ0oT;��CZ?��l}u���P����W֠�hT��h�J�_k>q��`ۃ=��vʒK���P���Ʊ}�V�rΏwJ-p|�f���rf��#N�ct�X�G5�{m�|������{�$s}� ?������I�ԍ���]0�Ǟ^-���<������c���oQ��~ʺ��l(7`أ7`�{X8QP}�\u�~7_�a�f@�{�4jp2\�����0rXt\�c���d����J>����e��yùx��x� �$R%�R!Vf�ը�-��}�&.���
j �-K�p�|!Vݖ��]k������!Ϸ_/���������/>l�B�ET�g��D5���g��J_�Յrz�[�*�@Lut	S���H��P�c�%���Ta&���w�C�t|��ʦ�x�B�˪�A�"������R&'(u<y�Zi�m1V$��ۺ���=)J�K�Q�b(�R����{�\v��!#=�doM�a��.�V9G��*&��+G�W�wר�֢y?�VWc�lM�2�=�PdK"}�6�*YQwX�A�A�UU���9��%$��F?q@�2����	���(M�޳4�BIx4�C��hM~,�T�}���(�Xʚ�n'����R��z��"�J�4Zּ W;{����K�Q[ٌ<��l�h��*�0�͎��ƽ�>Nt��,ɚ�Ht�FΖ�����wD���[��L��q[�O\/�Aq�P{��2�wa���4�m�z����ku�s�V�W� �5�ɭ�Sr�.�2�U���5�U�U����}!~ohu��g��m-�C\%�ܔ�j�A��neTe�m}����l;��	����J���V�VU�z6#���I��W�6X�ވe�b�����}p�R����~o}u�J�t!O��m]m��w�CbT����Í>5�(+�����1g�=k��8��P���2�xr�p��gd[���Jݞ�s�jL����*3��fO_u*���@��r�fVP�1~BQTjuq�����7�����ǟ��r��֐j�$|��ǟ^<�����_<�~����ϟ������h�4���oÆo��/;��Y}����־�<���=_��p������ӳ�H3��o^�Һv��j(�~Fs-�	톮��������\�+�PI�7L���hǈ�&�H�F�����$�S=���D��?jiwe����v-������u�x���Lq`8��$��18���Y'����i�&�g���)l�IA��{a�nm4�U[���D�=O_�	�!X��	q���>�e5
j����=�J���+JN���<�Lr���q�k��9
��C �55�$0g�v�`�`�T�%ׂ�5w$��$'���O+��,r�%D���z�S�(z�L0�#�EA�� ?y�J�`�����n������)���[�׃�.���,u��&��@JףK;t�Gp����uX�Qx���a��6��拠�ݷ����X��N�u�aT��Ci�l��L`��P����Y�'���뛆���4V�b6�� %����P��0Sԓ0(���� ������zY�	vPr��C]�1x�@+�"�9�a��[�_x���x��6V;o�Y�i�ڡo>��)�_�]��h�G�w�)�wqbb33N2%��L@~�˼�h{��4�j�;6'O�lGR�YaA�<#�Z�t�HV\kG)�c��	a�z�¦җy7e6����CCu\��
c0Ѵt�T���e���B�If�6[�z:k�^M�jx�>p�N;UL��1�hcw�	2#��5��:���h�^�c?A4�ل�& �;GSA�s�iM���in�M<#!�5���J�Oǔ)OY�Z\����(W�fؕ�6�m��L2�n� N�Q���}�$�5!�	�(�^��pԋsj�es�A�N�Iɝ��\�����|@�9
�%Y��kʬ�����q	���8�^
`�I����D�Zd�=�*惉���p���eo��OS��T���P�Հ��`�4A�fK�l��ʙ-�D��0g�~ΰgІ�3&S.!NP��s;��ȕH��WMo��cuu���vj�h���"پ!V)mRn��{����Q.�V�=�q�q��w�]��`GxMKiA�n��X6�\��&ٶ�����le��	Z
(a���b��M�����N����8�I�4���U�)�P�i@SD7n�P|��chi���*�V����ǌ���2�����& ¤�>�`QuRw�M�@�,� �j�f�5��h>w�WK1�I�i�Hə�|�B�Kz�̤�g����S �7����g��R`B*��Z�N��pv6��Zm
P/��/���	�ƛAb;�vr;T� �&�~v� �[HI/�9h�Ym�����VP�i`i/��t�%?����Z�r?�@�x<BjwY�xO(�p�A�j����XmBR�Em����f6�b����`f�/{�2�&���u�!��y5���3Ep{f��z�Y46��\�v���.������-���*k�+deb>Mv@��u� �(H�ᥲ�7����E9t��v�Ȇ�{Cz�>����h��>NB}�B��7����ۨ����0�u��9p�n���\T�6�(4R�z�����n���,,в�GR�z��呴{�6�H��qYĜ���pk��Ǳ �+!�P" ��ej�5e�3�2�z#����	^�
�L�g{#�c,"����6�p
��ߞ
�h*�T���_����g%��`)E�"���T*����ͨ���;�����UҨ��� �.kҨ>����k�Ps:P%��0��H�_�y��7h.j��L�]I��9�������(N�Vh�4A�)��
����g�!Չ�!H��N&�	�H6�Bb�H,���n�o���^#��Uo�N���zv�2�����]2j�<�}��F�i����s�]`r��ŎS�ϟ�B̔U�JDY���{�x���ؑ���Q�Y�ՙ�ԃ��[�j�F��V[ջ��1�bس��'��O�I4[5L����]W��P���W0�z���Dt�O�2�����f���a1ͣH�|�L�B$l�l{�t��h0��="��}�"�=�M=�(iȡ��"�ߤ�.`�IY�Qp�.-uAh$��E7!�ɹp.�B�ޢ�A�}�8OU�`��9��Q�-#F��i�x��R��\,����G����1���z���/����:�FTaږ/EP\*=eS�QI��&�� m>sb^�i_����(܅!x"p���^U�_w�c���މx��mݬ=P�n��KUq�A��햆�=&ZI=J~|��w��ke��z�;��D�n� %�)��z�M���G����R�1�ն,���K�i �=�p��o�R����^|�[��媋YQ�X�PpS��G&��#K;8z�U��P��Ȝ�sqx �P��������|ԏ����&UѰ p��X#�=�ԷZ����� �F�z���l��~ݿ����:z�*�:����`�t'M>�Я�T/Ű1�ӕE1A7F*q����th�Е(�TK�E����|�nu�b�6�>B�̀��O�(��`�q���Ξ�;To_e�@{Ӫz�� �,�	�/O���\��q��?�C�	��N����    X��:N��]��L��=�Y�EB���b�9�}�2�B�Np��8���"�w��U�J]��
��S���o�Ū�+����9�U�RѱV�w9��	Z!+��}��R�'S�$+��L�b��\{sV�����f�j>g�m��[��d�Np�0 ��Ȼb�h�+�k�W��8��$�D`��	v�d77k<rBK�$@(��Ww^���<�7e��x���Ʋ('�
�2J��R%o}��z��=�,�(;i��O�������.�� f0�1*�":��N�Ag�u|����]Y!)�Nu���1(�_
Z���m��`�f5��+��
���|$���(I��S�v��ɢX*��]��{-y��hwŐJ�ƨ�0��0�a��F�A4���_�9��S�[}x��Q��d�hrjW����ά�������@�c��+���sT�Z+a�?�\-���d�!��!2̎a����T�Zf��:"����7�gP��k�#�$\jB�n$e��L^��x�b7W�5�n��W(�'�殮�/E�%HU3��}U�jƄ�޴���(�3e5���`����(���=����i�N�2�>�-g��A�0�],��맇:��ӄ��`��k��E7�����XTFg�#��zd_¬�N��a焉�j�;�֡��qc���9��Hə&;w�D������n�hLX��Z��}����`����3�h�2�|D
��������n�!�M���ّ!�"G%hJ �	ּ=�8w�e�t���ﺳ#C܅�%�X�p�sg���3a͸��,�ce�&@3aѸ��,�B#y�p��	�t��M}�n�E�C�'8	��~��Kj��ˉ_Ԏ8)�e��\:�y�g��i��ї`mZ��^,�ӻG��Ao��&����p���ktp�V�z޸	P�6�p%�Q�!��k�M�px#B[�e�|�y�7��y���ˣ�8�H֋�X%u���H�k�@	]b�qq��תZ�QK�d[�jDpNf4�xuO������&b��4I�y���_���@�)��.Z��1@�`���n���̚�ԃ�F��ڌ6�k�q.�^֑T�����i�qF����,�m��\�2�����Z�c���z���U˂�f����ܛ.��d��sv����=�J=���{/�:
N�������q�����h��i��]JFM�s��s��#^}&�}N0<n]��hc�qY��\�h��lB ^}:�Fx����ύ�$�6��[<�I4��0��&�<}Sl�<_]&���`f�K��>�K�a��pU�,�Ӎx�#ҞzL�x������&9��	�	�8B4��*���;~���&�R�y�Ц.�܊d('�	��F����Q����'�m��jk��v�̻�->6E��]����FԪ�.OY9gg�r�`��Ä�I\�f��U$5�Z���OX��Ԭ|u�7��~��fL�`�B/zJ�LZ�|L]��%܀�ϟ����U�⽓М=7d�ˢ���	1�k}�>�K-��`���+�TT��������os�v%�9�ʒ�$"i�$�둤I���ͅ� ;�/�{ŞVTx���-�Ab�Iw�ɟ��d�]�Fr���P�Wx8�r��P��e-�}U���}�k��HJGIu{�L�T_ʛ;Ɣ�v�6�=�e�[�H�ͣnph=�V�aF��i��!Ӆ8+�`kO�����|6�Ұh��<\.!��kB��{c�y٬�aMnD���=m��i��	C@Gk�,X���!8�j��h�`��L�kw���R����"'����m�W��*�4��uo=�������JOxjWT��v;�H�zPy �(:��E�5�#�+����}�ނV�����jQ��{�ڱ<��Ѵ����h�MjC�1-�O����5,��/�,W]T�oB}�`���ek�3ۚ�+1���J�fD��d��lk�(ַ�C"�jI��S>�0��R�1���& ����p�̹��:�:�p�`�_�<��Gb8KE1����K��kQR���	���0��!�k Mb���4�#��ݹFR�����L��A�m^2 �NO�Y�6J6v����\���	�ʨR57>\+���l�P�%6�J<��I�#�(w�P3!�`mL��s��Q�'d
�K�7�_�5�md�G&�`=��De��T:���]��0�T��K;��Y#�	�����թX)Tv�`u���e]YD�.Y�W�"�o���N��.������D�ue�y۱�C��է-�K��֔:t�'ػtT��՝ₕx$����|~�Gk-Ɏi��A&ii��h�C���p?Z����AM�2c�L�V:x��z�y���[�Ww�E-"�v����]� iG���:c�����'���}��6��k%���F�G�L�wT�0\WY�^�Ul�'����S��Ia��[*�.�,���j!�=��2R��TK�.��ý`��c�� "%�'#�)<g���}fuH�=n.�d�i��.$���r;m�d%H��)k�\S�l��o=�v�B����g'Ur��Le���f����ggUrS%�Р�l�)�R�����;�i�G6:o�Ĺ�� �����ɖ�&�SL��`
�z��{BLr�l��&��mK��u5�)�_�_��B�.����[��n��,!@g�B�fý��%�-4�0���~��l<�8��p��Z'���� )ee��tARo�Qsa$�N�qL�5��bLWgkps𴥑L0L�5��� �aqs��d�X��4+U��u�+�U�TSs/Z��LX�Tȫ(�a��;��\�޲�ܽ��3��Y7P�C�b�}�(yɼf��1Qn���_��]��5�Ę	��Szp��01�1"�H��uk�0Gا�.�0݄��s� pY�"��]i�qk�KdW
��ڹ^�]̦aJ8F�0�	F�����l�%�����[����LB�lwQ]v������&(P�F
���R��I�5֑���	ԥ��ŨI���+w�H"I6!�l��N��P�V�N[��		fH� �L�M7�N+y�B�z��0[?�`�Y� FY����){7F�_��}E#XCT��ܱT]��z���J�7L!�M�b>�sM}~��%�&�`����2�=��E ?�� l��EvF��{H҅��K�l�?�`n��;���R���R&ga��O�'�cl?��19��{�e���n?c��^�	�z�Q��.�e�c0S�mh��{��جM�o�W��"X�����0�\�����_<���ۏ��~C�~��IVͮ[��U�%۲{v���T��>��'�� T����1ԡ��&��3D�&��(�py�6t_��kޕ�G�Ə���Itԯ΢G�MȜ�U��&d�DA�Q|�n�Z݄"Z�g�K�/��I©��V�Lqұ�pd��V*E�L%���zѫ=��!�-:�K��<�N�i��Ȣ�~ �ڤ,����x� �J����X\�ޛ�����?��ӏ?�Wy�Yή����;卻�Yͯ��ցZ^��8�on<� !�؄�{�R75:F��$���F`��A�_�n��,D��z�-]$�@.S������/j)���$t���-e��q�jTuK�r:�dT��E��X��v�5i����x�:=�?����hw�`��zo�c��cVJ�&�DQ	?�j�Me@��Q����F��F��F��F��F��F�U�Bǣ �i}r���������6�]�<~�F���C�c 8� C7��F���� �.H-�<i`$^�x�^�9P��^ �噮�����T �ꅢ)�5�E�W��� �@?� vP4j��u��y=i\P����g�?;,���]��wNc�/��GHt�e�$t+�:c�k���炵<��s%֎���~`+[o������޺^@��B�S�S[남��ؒ��4���'����{�!כ,1h3��T��FcAm�w�Y|���&�A=�$�2?������A�z~z����Ov�_�7�gW����    �4����EyO�>$R�i�H�����0�)Y�<�Z*���_&��2u$7�/��U����W�4�L�u�:�:M)θ�̭RoW�A�fD�!"Kē��ҝ ���� V��������@�ܜ�E��%�W���h�:z��&.�z*�(~~鼷�Sl�-��� �L��0������ց8쟀��Wf�3=u�
��_7��(����6=���W_��������5�J�0���0%�Kk�)�1�|�^Q��h��#��p�����E�7�aI�(���b��,ؠ�4�	�Q!:�ܨ�>�:����Ze��S��d\�[m��Z�LV�����E1EG��q�W�l	�g��y,��\�b06�j�0_����jKZnkN,j�U� ����1.j���[�$��xe)��8�؃��W�� _ΜE�d�^��:N/ا�:�p�:z�2�,x����G�Na�n��AU˸�[ a"�9c�h�m5��	��ZG#Mtu��뼐T�S~r���KV0���Ԧ�[��>%K(���ڗ��1���xp�=A%���� Y)��$r�d݊t�Zl�e�������9�Z����t�XN�,![��Ὡ��8���Z�i`Z����S����NZH�:����0�&�h�[G��F�9`T����T�E��0huO�Ǟ�'��r5b^�_�f�eq2�vwR/&�vH��#���%���u�V4'�ŋK\��ȭ��x�@!T3d�'U��7��CnO���l"_�	�oS��ɮȜ�<E)�I�d�c�⁯g��vV�I��������Z<�_I0E�L�=C+:�"��k�)e���gd���=����Մa���1�M�V���!Ԏ~�	�䰟�9�Z՟��!��p�h�7'��ocN	jK�%S�B����}t���h��O���{�a�fR��7 �u�y��O��@+7��)B�Ô�*z�-����k]�����s�A�>(ī���,Ȥ��J����z���wc0�N��wLgw�NL���PC<�uo��S5qF	��Az+%E�v���S~5ц������Z�:�}ʏ��4x>�~d�:UTF�B$Ғ�����O	e��U�!�ﭳ=��{������h_��B�!&	�ؔ���n��nI(N�K�����"�$�f���ȣW�RA��!�R"�Gl�9�mw��G��wO	�d�h��UOE �����lV�ǝ��*�u��2��u�� ���YQx�0W����U�v|\�?��Sw��n@K�Qe�UZ�����r�'Ee��Q�ǩ���uM�P�/	��\��n���[��,5ߤ\���l������<��(��P�\#�]�@�y�T�	�;a�1���V��Mml�HnHG>�[I���ƆD�칍Jq�TX�o�3�GתX��ꔯE} @p!T�|}W tBW��+N�$ԇ0C�����;�d�@B�FuZ�ck�;���-�ʸB��k������)���o�A⇲IBG:��M�����8�JN���@@Y-��r4�������B,
�_�&C{����
��ޱMQI;��bXy��v�	3���2�29�2n3�p�J����®�MnR���SVe"�b�R�K����]w�5���F�)3��vyХ��Ifp�����gd��w
�y�ΚM+
'�YZ���b�غ2���.�Vy����.JQal7|Xw��b��m8��h������d%�ë��� �9m,�^� �H΋V�E�"^�Ar/�O"���&y�F�Ӕ��Μ|g<��(����ё�O��a"���d�������q��
8�Q��5����.����#�G�ǜ/���+���[�ݿ�����/s":H_������יV3F�����.�+S��eJ� 8�[�GƎ���	��E�"�n�:���#�s���A�MlP;�j�������0�ԬQ���F�;1���������l�Ə�xׇ��:�]�J���'.�����V퇱�t����{[/�BF���6ź�IY��p��4ZS8T/{1z""G-}v��!�EZ\�L�.��Oz��
����������)��Y[-yE/��*�/�Y�Lw)�?j�pj°�bq8a��<:F���� #V�^�m��T�����V�IU�F��C,���t��e?�V��Esٯ*�K��8��\�q�U�U�DmUB2�pjq`�S�쭝�V]K������Q��ߛ���v��LE�儬Ŕ*-��k�@�ΉV�4ʂ�ݠb��T��FWcJ֋ӕ1�I�2�_=�x˳-S������?��N���hN(T���$Ob��^ɌٙY�&��rԃ-�.�3=���ՕS�'f.S����+����Oɽ�V��͛�R��5��J{Nv32�7 ���l%����҂!v;��G-u��HY��4�Svq�3�N�
��uf�7yڶ(7ļQs��� ~��}:n(K6V�mK��W}�@���N��,��&�����)y'p��x�-%�~�9uj�^԰���C�������Fe�����n���Tu��l��=�	P'�\�,x��k�b�8���')�FA�6?��ut���hw�pM�ʠ'� ��:�$���y+*H���.f�E����0�_�E���S�_���j߼>	�Ϩ`�:�er� :3/J�GT���DC��,�D�g�4���9͘.�zQ�����b|a�Fh�YtX0���_��!�6��r5���-{�J��l���uH�5�������=Ȗv��J)f�7��rB]Ћ�>��dH֕%W�q�7ei��"y��	��Z��E�_��m(�YE�4��i�Yn�>A36���$�q�eY�N���<޶����bq*�H݀�Ǖzf2��0JS��6qvm�\� `�\����ƪ�z��(�瓈e�jI�������P1��ł�+�2 2Ո��hp�FI]�XhHJ��ܼFK�Ca�/̻[(��h�Ń>�Sw�2���P2p�U��b�1Tg��ys�O��E�~u�L؃/�3"9jEve(�m��%���\����Z���	aF߀�i���Y�QS�du*&O�Yћ��*��ͣ�r���D�I�w���ρyɨY��t��)�Xr܁!*!yZٹ��]Q�F�;����.5�������hP@�)�ȱ�թ2����Lƈ����PN�	:�M�� Jh]t���68Ih'N������<mN�W�5m���!L�dNL&���vQ�hd�Jm��ʘ^7RiN���L���r������j�
>�)������e��L1�;%�ƀ��u��@FuV$~=Y��
��ǐ��_N�K�0X�,jU{r.ƠY>kҕ�.�1���I�����%����,v�7�NZ��Ί�X��r����2��p-�'���3�ਅʹ<��d�>�vf�JIE*�gr��B��.`zu�zL�4mJ{����r='�pmo"#�Wo�|���O�O�mB?Nfc��Ju��D�������4q�+=�l&R�*Le�;�p�+Wp���E�� ���ڛ��ū�N!�0��������'?<�rE3�5��0��R�&E��Z��=����[]z�"�1zȁS/�$^�
��$Y�����Y�IM;"D��rY�l����{e�h'��ou7%��}u2�A��s��drT��n�xK���-^��P�b��H�E�r�nP�i�5�J�ksYT�P�N&�p��$�#�u\��N��!�K�|%�0�X5,�	��Ѧ�Ja�W�N]� ��m*������,��IzF���,N/���`��Ӝl��>���V��2/KV�F}Z���x"���r�!��i�|�S��J�A�j>p�M|oq�֩e��;?�Mq�<��q��2>xm�@����T�&���?��J��v8m�s��AaXA�T%&3�lt��v|#W73n@ʑ��Ղ�����U�[{�V�Hy_�l���K9�R�&��s����j���p�Cm�+L��ǘL�k�YSE�b�׍�oՠG>e���Su�y���*K'�R���QY�����V9&ճ��O    ;*����TW�cPr�k ��Δ��)�C$ ��w�\|�G+y��k�+O�o}��ܰ^P��-��8̩��ԍAO�\"QL���^�-|�/?��������?|�����������_��~���ū��=~��I�A���wN����/���_7��	F[Ϸ���c�ۗ~s{s���Ҧ�՗_�/1�{�+������)#_���~h��>4Z�l��/U54�:��^R<rs���ra��_��q�~����eN�t��<�t�?� 1b��~�I���πy����]�F�����kT�X{��q��uq��`�^L��g��30,�/y�?��q��^��|g"�j�h�m\<���uv	0�|W9���1�Rޕz���LĘ�	≈��F�/v46Z��i5�r��^?K����*�`�a,0�I/�	�����B��>�g��?������A����0׋�[��N?{�ax���U����4��)B4���T;�v�����K�`��qƾd�й�w��Y�7WV�O���
t_������s�N�����8.*l(����Z�y��NL��^����,�e�������{�I��g��{/1�6�^�@cn~��z����5BL>��~�狇����Z�������'A�5	��Z��q�#���;��/u|i���DT4����h%�Q;!����=�����xؿ�9(2=��P?yJ�{���Km�+LJt.��(�30�g|G��A�����|\FpD+���=���_�������p 5��"GX�/����������@�t�]�d��/#�,��E�P�P:?��zd��xZZ$���:�ח��5ڿ\Z<ٺ��Akk���V��XJ��!������S����)�������o�{�^�t��b}}qս�js�]���_�|�̹\�=����0������O������zت��xtY���.�A5�н4��!���2L��5�c/� �������YO'�đ�9lFUi@#����πs�CUGD��3�xL��?�s���(��|�A3�'=�:�#YG�
�բH�0�l�������N�9��a�^fgL|�����i3w*�K�Q��~+��M�E���,�'�Y*�
su |L��?�$��"���V�z�������(�Z���}[o#ɕ�3�+���h0+��0�@�&��TiHV�Zh`!W��Z���J���'۳3^`����,��س;���ؽ��}����DD&/�$S�P�>L_(f2��/NĹŉs�^^�JQ�b���Ғ{+��a���m�aJ%�	��(�ɠh�A֣ܮh������O��7�RL'�U	�K��>�f�făf��u!Th*PV��b�9�$kk�����Y�A�¼��R�eAk�z�'=�%�����;rt�����Tڠ����	��.|XL5��rd0۲�^E������:��am��d��Fu��g�Q0�PE�)�h~����᫁�Y�_����;�2�$NJ���1�ӭ�lU�T�^���"S��l�l#�&�;]�M /G�8���K����g�2>�Fߨ��
mD����3n�x��w<>q��P��� i�����S�<�A1�'��M���}������44���:7�H@��:�T�A6n�hjM��cq!K�m��RϠ�������ON���l?���h؁��2��9h%�&�|sֲ�\�CgU�7�C��!�V��r��wJ�����t��%K(M��<��PPa����/Lfb)sr.'�m_��E`�v�e�jWZKP�AA�Ay�~ܸ*��<5Ci�@Ƞw2g� ���&kL`:O)p�J@#t�]�V����4M�����(�T^�N�dE��*斤"T��3���j��rH�����Ôg��4�ai��Z�~��l��u�a��h�64��̊����s�C�O=9���4x�����N����D���h���hm5�wUFP�N^�7P|�&�C�g駒~�K�*p)Ma��h�I��6���4�}M���$�44���:��fW|���nmM��PX����H��5&�#C��֞���'ӴW�@a�Ty]�@��:��*l{D� �4pzګ�\��A:+ t8'P���ȩ�P�jࠄ�q�ަ������,�~��I�"�j�΀0bp�@K?��2 &:��4~T1u<9Z��Zԥ���O����a�n���`4�IMo��O'�Ne������ӹ2u��`��v�-�Zܯ[��� d� �G�4��o
����(��h��nW��_gK7�*�}�rw��	s\me�#Δ�èo
�M����ô4k��ӛ;��+u���A�<�8�d0�R�myU5F߭�o�y�c�o�]� �|�<o�k��3t�Y���������Iy�[�����jӵK��|�|�
���ճ�\\�F��ϗ�M�~|�����������+,?45���rp4�?�u������W,_._�.�`T���>��S�����/��.��=Лv��m�.�3\ZM-� X���׊1�]���=~Ε.���QF��k��kh�:l�����(�>��\�����&\��T02A[���闫U�Z��7<u��h�>��}�G��aBU��Ŝ�s�>_`�;H	N�!��"9�]���k@n��0D�/�`Yr$���Ȕ_���(��ʬ�#7��ܫ�E��S���B��~�1d-IuyD-���vO2���`�R�,�\a �:����UxPs*gW.<E�T4! K	i���r��p�:�I�_�uA]���Y�X���x#mGoQ�uP��O$>�%xS�����Ŀ9��
K!w�h�h�2ݒ"��k��y˩��߄�:��,l��D#�}axI�Z�b[��!�)���lw�gg�R�_8)Pj+�t�[�*�-O�q��"�I �~l��FN�0���	��Ns��S�X�kmB
���ʌeh-@`~Y$�C��)i�i�AG�vo]C�_\H�j�Dbl]�(T.lK�]�8RE7�NǮo0߄7�# Сs#��C���Š$nTJ�Cnq뽎��9�mr��$G��3P��v��rZQO:���h�3��r�N-�)�D���ֳ5���q�}�ݗ��Q$��1��wҏ}��_:Ůg@�$3ns�`�U��/���K�x@�Ɇ ����:^%��������N��O���b�,�\��g���FSIn�z���Xb.�}��b��+���T���'0���
���@���w���C79�Ep�@�N1���=���_���DƗ���n�s Y�d&�qF-Y"&�M�$�7n��]��	ʾd�[�T����jv�
e�E����"�c�h��.���I�3��.�ʸ���j~>�YʊZ�Yl���&��Z� �X��=����Qo��h[��S&C�@��Y-U#�jOJŬJ+fU�\*�m@�2�N���D*���2T�ӻ������՞`��*�0�>e�c�j�]�ET@,�!e��o�1�V��V��*ޫ[qń���ڊ\g�7s4�M��4�۹�H���av�8z2�a�v���	Y�(|�{-%Ub��5�j��Ն*���g�"�CD�(���2�B�x�U�{7���iu�[,�<��BS�A�Y��LJ���e?�����	�J9�Q�#����F�h��uXv���)%��B�0S�����o���7�{��Դ79��8�=�*�Iʹe49~�,F����2=�ﷱ��i�l�ӭ��y#�NXo
�w�Fnɟ�a�����bo	o���%T/�d�՞m\i�
���E>c/�U��>���QhuT4��&�$\O5?a�7U��L�V�oV�`�`4��k1�'�rꢢedR��\��!��2��k�	���ٵn`R������B�'��"���)1��-kL`�ⶓ��hе�h���%�|4z�<��[\��Y$k^kތ�r�
|k��@�`�C;Qz $%�����0����T۵�Ѕ    f��U	K�5K��{p��.�;��Ʒ����K��l�g�y~�l�pͼ�͔��eH��%��bOtoZk8mlĐŃ�2���p�D(
JH��,��&���!cN����@��?%���=�T�|Ka�,29p5[B�P���6�P�(q��x��	�8OM�u�?��t�@7�z��e�Ћ��gt�QmL���i���#V�kcĜQU-sDm�&��f'|�Y��Q�Z���{�A��a�Y�ˏR��Ob����fx��Dq�������@Ҧ��|�k�JĮ�.�B��KZl���C�3��,ZԧSMrlS���ɴ�9�p�Y.��+��j�	Cǜ&���^.�h2��J%�cJ�/�3��U�'����Pw&Zn��:�5­���%6rk�텞��8Є,�L�r:�e,ѣ��B��£�d�����ߢS����O�+/<V�l$;�48+��Y���ިs`#T��V�q8�'���s'@�Ci&n�*�2�`/3XC'�`��c�Ւ4H�.*�㴸����*\.��F���/z���J� Ye7qťV�UᨓP�t�]	Z���`3h�NK��2�\��+׉|����M~�*���p�'@%)�5#Mu)�`vLc�(��H^	G5����,a���jdB��RX ������b�x0,n�a�F�t�R��	���`��
dA#>�g�{�R̖�~wB^�FEŻ�Z)9�j��Ɍ�&�9��`��[�<�۔B`V�R{�����p]�^Sl�޹u�qW!���i�1�DZU �骒[�����j��X���`)�A	�c^2�h�SOt]�YoRO<>�jeN�<y�3����@��SP�LX��Oin|u1E����gQ����3Y�ƨ�l�+,9��tҪM��Q~4���	�ݍ0y>�da�����Ț	5��	nO�F&S4K�a�e���^w��N(��i`�sJKR=�X�H�0��-�P9h��5G�ܸL��0]�"�7?XU��4�ƋfQO4c(C�(��lE.A���9��q�fk	{��Y�I+^nfܔ�<�]%�y4ZB�,X��<ͬ5	*	Z*j��F�k��J�,���w�p�o�;s-�Ơ�&��$�O�����C1�'@7�ٖ��SU�f����u`��t#��f>׹G?�7(�$���Kɴ2-Q�T(����l���W�D��H́_�y�W�� ~�/���"���Y�K�hٞ��(;+��9Ƞ%:d��Ik7�pl��V-���Աe�%��#��#�V����#P����jt��%�U�w8t�տx*L(e��!������:�R���Q�޺��IXfέ�zy���N��(~�S�j�a4|_ڣ��1�n���� l�\�LW��-P�CO,Q�${��2���+�jW�0y�'(X�3��(�ň�� ׈~ �ӐQ�6 �偳�@QCR��R��:��ކ���D
�94I��
uy��~"�wNR�%�0C4��p;|�>���;X���ĥ���֙��#�M��6�A�7&�՛��j ��&�aZ r�f�EZ5� @�3V[&#�Z�N[-3��N�e3v���N��$'�����v��A�ȣMl��ݒ<�!3T4'@����L�M�(�kD��*�N�*C���Tb�'��Ń]�F�ߐ1�I�,�`����\-;�B�ΰ�#b�	����;�%_�,n��W#e}ș�y^{�Atm�|02L�"0r��J�����?�����-��),�/��&���nX]������w�\��r��8zxF97v���Q��.����y .A°�e䍞L�&��>W������d�J���!q�И�������&�־P�s&\���Ԧ�{��,D39dqdt-7�-�cک�ۺZ.s���A��P�^��)F�a}x��-�H�)��D�O����ԺS���K��؉>�<�nF�hE��� B�W��=^F�sK�j Z5Y(����0�a���I�u�XƎ(Z��̎z�w��"f�+g��PX��5P�%�Z���.�"{�940Zpg
��t�q*z�T�pI�׀-v路l��~؛� �I�T�A"@�.��fS!�4��$�V��=
��� L4?ưA�Ϟ[5�z?^)�%X*�{��\"a�ר�`;�Ez�BZ���d#��$�U��-�.Q����)�$��Mg�4�:���A*a�+?�@��.-���e4���z�G�?���82�C���Ň�,缡����^`�_���x�/��gMn����3%3�1�km�@�*��F%_VXs(�W�FJ&�D��/BRRaG[	��}�ө˳��"e�B��i�ߟ�b�e]�X�`�v�;�`�f����.?1�͒	+Rf�*6������ u��ʌ�i�u��q�5ݰ�b��ܐ�|�I��ci�P��HINf���3r|s��5iqc⪢�]�ݠ|<ҙ NTO�E�@���gB���/[�p�B[0�û	6N�\�FF��X�m��Y歊��G�
�]�<���;e\|�f��Bh�U�,�j���]f��)�
蒠�6cY4ZƑ�v(l����J�3����ۙ���t�j8ې�{�)��aU��3L��xoE�����@��GFRnf��A�JG)�(Y#�++���Ɂ���з��!�l��̴a���T�^��.��E	��nG'`�`��	�º	S{X.�2xȝ�\0��i�62H߀ ���+4l�ʯ�r��	��9���d���������7���h��4�=LZf0��:�EKb�@�`ku�,h�졿������Q��,�o�����~�����h�8D��m��y���cR�!g�E�l�q7܀�{�n،��q[x��=�M��b�&	����<bsJ��2�7���{��FB�ʘP�=K���A�b�N��ć�h�O��|��Ӡ�����u�u�S�:�Ђ��������]���b�74!ai�g�h��?k��G���Y��i\,QÊ�Uq�p%�d���C�Î	�pG��	ĥ��G>�/2ݠK�G������t��@������t��Qf�I�&Фxj6�$,9EOh�������M��c�I�TY��Ө:�h,��Oeh�煢D!�E���C|��3Kc�!��� �r��J�;:�>�YX��U07.7� �l�u�EeО����f{�o��a��Sh4֘�r
� E%�0���&��`�|��-�*M���-��-R�������[�A��2��ާY���('�%�AuA���馱:S�ć��Nz3	�@�'�ANhC�Fw��{��s�6�q6i����Ӽ�a:(�hB����`���m���k,�)w���i����`Pq�Kͷ}�
��4��y�\�������~!�r�=\Mk�{�q-*�B���N��R�J[x3P �ޑ0	�J��	�]0%-�b|PLǌ���h&n�3��ͭ�p�	�̥0�s?��s7c��`��ŃJ0�W �B�Ѻ=�x�a۔�	����S|�)=1L��z�d��xDp�A�����Ԇe��?'ǧ(w�>�biR�G�7?Y������%�E���&�`^	�!�xܢϦA�l�V��Z��&$�H�[�K��aՖlH���	8:�N1��lw<Eu�� ��܍力�=f�
@,�.��"fu�$ӠV �"���&L�E�f�Ϋ'lGy[��P-
t�2j��6���c�jc�@�Qi�`�T���r)��"n�mh�$7#n>�h�� |�n����g�~\�j��gc�UA]���x<]>��uhT�O���v\Lv�ކȓud�=�)��D�<(�Q2�^��uG�9>")�A�JT��d��7���
l�P#����L����A��A��#�!� �v��o�O(P\7����OP^A>9�o���\z���2�8~�:8�S�C�0*��=�eͰ��aH��x̪3z��֐��#�_��q�cw��w;3�';��l0mw��T0�h��~s|xߧ:�|�l��3��_?���:�96��3�     ���Ewc�p��	>�t��j�~����7�ʍ�㵟�|��X�!�ٴ �_�#N`}��ϛ� ��FeiM����PZ%�D���޴VG]�޵'x�?È�r�L�YĮ�R���DQ1G}�^bjM�fcq��0����0=��+�W� �b8`	�`�.]�)a�Y�@g�����z����ڰڢih�'�
�="
�+
[�.�
�]���=?�ƚ��ADݛ����j�8^�T���'��F����Vv�b�����$�p���bTf�9p-X���S����"��"�OaF��XD��sQ�Y�MII�ǧ��l@�'(V6�Xg+��V���5gF��3Yd���j��.Z��r�� �J{��	�i�R2�S�[(�������#3;(�T����4���V�E]��3��6*.w����}и�5cIVdP�Ժ�fk7Z��(̀b�S�!(�{�X�x��>�'�]�2c�q
�R���vE��>T^<�1Z��I��;��b�V����`�ґmf9��'���d��d��+�*��v��keٮ��P�M�/��Es�\=�hk���"�7r(!� -v3Q��L@�O��+�B*.п�N{Ǭ8���K-��wPQ�����0�D��2�*�E{���<0ܩW\�Q�(�4���b������~hC{,�:���q�{NrP���(����j��l�`c���l1-U܊�Z��!�Ƣ)�:4&�	�.	*���β���n��%ҩ�tY�gez{w����`Ua笼lO�%�T�����Aj3<R�,Z�w"�`y�Ivp�[�w��`W~@`�y/��,�Y�s�M�3X><�O�T��̞N���AF�8u��:�COhn��&�5_�fk״���!pwx�����52/�&�NV\�s��OO���r�[�7�����U(D�ȜN*���2��c�{�=�Ђ���TP�8�w��i�P��s��N��K�>#R���-�1�}dI࿠Z�+O��u"ֽb�v��p�.��R��&e����}�*
,�*��C���w�s��ZkFD�$1L:�#p��ycKn��'��4Ur:Sj�tH�@]Lj�΁��)�����9�L����N����@n{�tnL��"�C�%�YX^hz48V����T��W�w�WSY�x�SKv�79�ln �i�튵'J_�(v5��|� �N��R�������%�����x*�\�J��|_���NZ	vUPǄk��� ��}�d�gn��ݲi��������E�%�nو# 3Mw��V�݃m/ڗ{J���.��	u�`���O�� #����4��X{"8g@D�6��s,�:�ca`�Ѳ`=���r������j�ӻ`Ec�)7����1;a3Txv��xZy &h�k��UB�C��߃FK���(A�(��NQ���`2�F ��!ؘ�,�'$�����)ր�Q�gPl��
�$ڿ����p�Y��U��;�`�Fd�S<�;�!���Z�Ծ���d��PG�ƞS����S�^x���ۤ�#r���ɜJY���=�K�K}�d�;f�e�C َʜ��=A�b��L�j�v$�U����~����8c"%��ElZ☷�y�ь.�ws����9w �i��s�,e�	Y&�Qʹ�\X��w�2�`z�ܾw� �вE@�z~��;H�gxXU5��?#�)��w�_�.� �������Ӡ���@�t�Ĳ(Iv �3mUMb�*6-̫2��Ic<TtûL.����,kɘ��R��~1��eL-By���U���z�!2j�+�{��/���;xP�s0$��G���g��LOI����{���G�7�}g������;����b������۳�������؅�Q�l8�q���{��B�?�0����!8 ���5YD��>����f`�I_ݏ�.'Z�@��d�L�>|}sv�Nw�����^��.�~t}s���77g�h9�
�@6��Ҕ��V>�C�7}���<
n�?Z�D�7�v�]�_]��W���vH�����W��'�ߖ�Z*nv�l4ټ�׮,'[��u�̊0ZF�z�0 E�Y�J�Fm�_����%�,�������0�����4� ��M��,qOl�G }1JLg����#���a�ۇwe�}c���'�@��X"|�����������|T�����w0�`CT��=Q/ďɇg ��L�  ��f�6h�Uh+V�Fe�{ qO 4�wtȁz�h"����2�����Uڻ�z���HJ,K2�-һ�����슜�=�d����ijy
\\��%0"46WAϼ֦�X_r�=�$��A^�`��7xd�7�}T��.�U�+�b�6�4K�N8?�Mf�����)P���y�����x��Xzg�6
����Y�����޻�<��᐀ȧ�_^�<[�ym#�daJ�-J�=��ǧ+F��hp����4Y7�RKy)g�vb3�'T�amفJT�BQ����=U*Յv%�q+�����:�53�G7�D�&�EJ���#"'����o���>&�����o:C���rpq��S��n�g���Þ|�#&�����r򙟻&���(�~(8�
|�0QL��
����7Hƒo�r�o��O%���[���XY�-q
�` �����m�t�M��jjn�P9�O�g�ˆ�#2>��.�3:@q52�KL�ћ<�s�N���C�V������0��حA�B�,�ۋ�����z:�� �;��t�!��t����{g��
h1���*y^���q��p ��f��.?���@Gu�2̏}��pO�a>Wȣ ֝<g��7:^P�g���p�'��� k�`�\�\_^�>	��c��n���р%����OԍƲ�:��~rt�n���I�w@x|�K��@�<�|��	�}^�
 ���Y 0���A�����?
��'�3���c�y�L!�tⓠ����칿=BS�w慌��[4�b4���7:qO�h,�E�!04��_&\9�FC0���u~��"�1��u�<���e���ځ��CK�k
h�0r��0�@8\����:=9����X�t�L�)o��h�w1�+��݁�S4ѭx�Eq����@�|u}{��w��_�F}y���}y~c%������D���cx����3k��/n�>(���[�, �@wF�55u���������BM����b��B�U�&��������h�����4���O_ߎ���"�쟁�%HR��T�iOE���?��\�㋫�+��K���<��Q�h�!�ͫ&=�68S�0"~������3��)�	�#�!e�ڟ+��lSm�hip�Z���P�L�qD��]3��������yz�a t�lu{vC<�\ޙ�?$��oܵԺ聆C��M�V�R��Z�F�Z���ŷq�,�Rƕ�8Ԟ ���X4_��		L��i��8��E�3���9��ܒu�T봬��b2:�44�q7�]_��� ��u���ԭ�t�*�jXZ,#	���gWn�("O�%ό�(�ޣq�
jl�q��Da,���UT,��}X(`�5�A!~D�J�N��G3&����7T��"4���a^,��0%F�H�W����[\J�{�&���i�J����\4���BFyV����ce�P�V�P��I]G�r���P�����߸P�?�w����!i��k!��x��x���H�&:c��ƴ�+��e��v�̯�)���������.R�>��)�%O7%{�~MԝL�XV�Yx��{g���\�۝`	��j�h��i��������+�}�����㠪�AU����g"�y��8;���EU����X�r3d�`��[��4.�}�A��*�&�֕Ew�ѭfG��J�V������e���7}���?t���7?��Y��#��!ӫ�O@�|��,o��_��g��R���g�ۦD���?r�D��`�    ��0���B�BP�b �_ޞ"���5�F"gD}"�����ŶdT@&~T�bڂk����h�~"hA�_B�����^K�.:�Ǹ��kD;01�0WY��G�E��e�w���-ܽm�O,��]FQP�M�Qf�fz�P��Z����u��Q0i�WO�X_oI�%:�����q�*�\5�ؙ�˱����)3е��A��h�G4~H.Үt��ivq{vu��C2��<S�1W?�g�FP{���|#�LWa���0Eﮙw��28x���_��ee�|���$Uq�q��*
���L�݇P�
\�<�
e�tk%s��Z3<��k8q)T��B��o�B�wH����0uE4�<�f�њ8�Y\�h,1QA�>�������I�07���h�em~���o�#�; +�(,'O2Z�����BH�i�5�A��dS`R�,���xgMi��wF2����;�����y�!�J_J��;�w�=��M}^QwP�i����A� 
4P�,RD���Y�YD?��͎o��?�����<����k�
�
u׀f*և���Xt:8�F/����U=@b�_U�mi����f�k+e#d��T�U�+��n�� �O�h�P����N���â�G��/�*��?h����
1��:�_�cw�Vݝk���Y��FM��_GNe�_,�ɸ"�]�.]Ҥ�g��I�}�������y|��k�B$e<EӗGu�0j��,Ew��<�
��ǝ�H��YSw�z�3�5أe�#"{��Y�X�ܓ*�GNg�Dv�7�&�*��¿��Ys1pU�3���ttEV�*}InS	�0�'=� ��g4�-*����gQ��H�6���Lq�+\��-ӧ��SviQ�����1Mw`,D�*�������CP
��f�;���,���U6�7�&�u����el�U���q�{xP9����
�ۚ��#���h�*T�d��HDvO��y�U�"����x�~Z4p��Y��cc`���~AD)��Ků�,=-��0g�1�SLE晠�ʽ��n�-��H������7?p���F�͂����fa��,��F�@�0�}��h�Yl
��oz�7�d�����G��"�*b��۸�c�n>.#\Q�#oĉ�P�X�A��������'�)p!�m�ŴD��T�4S�L����to1�Q<��;��E��=ֶ����K?���$��E���FH�G�je��<:��1X�B�
�@t��	����^u�������˻�ڕ�4��E�^W�I�5���n`��Z��5��lo7�xݮb�����^֯=���mt.�&��v�q�@z;<���Ӟ�3�MEV�Gn�C�/�[X\hy�?0�.T�?8�t5���qV!�w��{���9x~H'{���@�t9~矵�RY�Ws:��e���2�WD��g|������˰þ*����m/=���o�f���SG���I-M4��c��{�_�\ߛ�����<m/���eLh�&nX"�6�"�0%��{#E4��=�ܙ}���8�!V���qFR�7̻��B1��y��Cr��G� �L5�E�W���&�*;:X��w8��I���j//�����v�������G9��XM���b�
�q�`浸�:.��paXFy����B[��X���8Ej_��+Q'�t;�,^�QL<��[Ss�+��/إ�|���{dkq��57E�����\�Kj8E#kZ�ٻ�c<�o���p���/�$��d
�<��(����Vqr0� WY4_���B`�l��z#��) �-���Q�`w�H�z9��v�:�B��*���e�b� _�Ԏ�n°�Z�w&2)�fQ/Ǫ�H���_������LG��r��ρ7�XS|�)�,i,r��++Bsx}�^\����1l5U[�}]�Rf����cZG� UR>�����
h
�{ڊV��髁��m�f�s3�2O�^��~�ZFFP�d����T� X+�L�#Q-��C��� �t�Lg���P7m�X�t�2�iD�RldZz`���]`r+0n�\�m� ���LusY�ڹ�����-�j<j�Y}��t:J��Tn�!�2���:^ū�yU���7�t�Lw�چ����Hfԝc*#�Yc�F�����C�P8%
�e�%�Fp�YS��a�oԍ�mЂ��1#�]n�(�S��/�%�R.�E��][�b*��>�Q��/-��_�^o����99���AW� �	L@�Co��M�޻x�kx��������-L�u]g�e��;6�����XIK�"c�**��ZEj�o]EK ��)�r����c޹��EFN�"���v�φ �__�^||����D��� ��mb�I@в�A��a�"Le�U�N��Zͼ�*��]Õ��˶�.Z딌.>��=������d���׆�[�)�X2����+�S��cxPAb�ݽ�]\���9��E�'A~�(
V���E�g���m4>��Tq_TћA�~ts�=�4�,�@.�W���M�Ww{����/�S�p��̴h����#������I�%3U��BV�5�o�FF� e	ʍ�E���Ï.�?}��S�J�~�}��-��fF������5Q��AOo�c�K��ý�2�O n<[��ܻ���jIԎ�9�(H_q�1!gEL�t���e|}{}��{N��O���{�k2�)hN��'���`<e�d��n�g���훳�/__����~�=d9������_�o��`NGz4�2�/�'査���z7,1���#q��yfY�� �xJ��b�ݾ��XLɽ��������٫���QY�|�S�"�y�!�  �������V�Л��!�6LO_�~����="�\6���������;����I��+��k���Q�eUٓ=���UqI�Uq�*���0�>�<ΧO�q��p��?9�a�!+��/o����S�"��9k�2W�t��q��.'Z��Kw��mQ=����u+�n0�ĩR� °9�e�2q3Sc��8��Y�	��'��ȯ
F�����k�2�Þ2Z�v�
A�	��i]1�L��mf���p~p� ��VldT�]Vq�Lҭ% ������ �&8��������9���<����l�,�p�Vmd+�m�=��9UX�����\ٛ>;L��O0����ŝ �޸�p�;�U!2v_<^�LV�%A�w�25}_3�0�[��4
]�0c���p�O�ҍ��� ���J�b�|��T䌱R��]��e[�p��!��Wdo�>,㳫�g��5�Q']�̕>��@�YNV�ҫ4�@�3�}�=�\����g�0y�yP`�������zTT+���Q7�T%���gZ⬝���ˋ��7�H���U��(�[��=ƇU��tK9�֖�Z��)!Ϯ ��+�1?�|�ʡH12e��,C����S-[1�n�*i+�P<���+�uY�0:ndebv)z[=b�rY�˝�)�\}o���"�g{ F�uEɣ���U_]2�@)DK[up����*N��H�Y>*(�OH��)�@�e��HRH�����=:|��-p�w��[��*��q�Qv�9�������&��n�4ݽ��d]2��^��Bo�-�b�5��)~�]��1�r�vT$��{�5që�Vɂ H�n���@\��hTrWࢨPy��j�Z��P����H�bN*���C�nze!�#˲�W����9%����DEo
��O���8�G����|>�,lm��*ǆ�]73����o��v��h}(�n$^��^��������)�rYXp���+�ǝ��Ix�����Cw1LzO�F�;O��y�����s��3�8L���cx<���ο����z���s��tx�x�~��t������l��{8=8|,����}Ux��=:�N�q>;��S���3������P��A����3�����+����S~Y=�̞��t�}�A�!��{������ݛw��|������|:�<�&��t����T���hv�|pp��Ε���7�W��a2>�y	�F�10��3�
�:!�tg
�a��G1m"�m� �  R+�f#��#��1?j�L�M9Ͳ
��[BUfM�:6�ENS��n���"�x�-\�z�5��R��ֈ�5�
�Y���q�����W��ōpFE���̚.VL�ݟ�<��g���9��Q�����-�T�&�>��zuN�OgD�	}��E�-��	�,Uj��AX]6���&$.U+����e�N+o�d�˿e������GK?�Ә��{�B�>�N-����A��kl�Q-_�Ϊ;asW��_��W�݋��wY[,P�6*�����Z�1t�;��7��v�~t~�!�c�?;���z�',�c�4�#�����w����F�4,�[�*�4�4mZ��,�#���*���{�E���ъ���gW��U���jcM����m�*+�[�V�f���!��j�'������vkj�o��@���t^��ZNymjo�{P�D�qi0�ԟ}k�	�۸L��Ո"d�߁�|Q2�?�)V�{�څ;��B4��h�\�$vw?��G[��6W�ۀ�Y�g���+�����]�1��Ƃb�WK�eZ�]�����/2�tk0���� ��?:������"��Y�	��__�vw��4�}�yK�9w~��}������u~m�&��������d�_	d�(/��!��z��D7f�"��C
�`�ۉL_LH��W@����}�3JЇ�2�!���ge�0]V�e�dY��|��=�����%��N����-1G�l�Nê���=t�ɺ�Q{���Z�o5��C@���L�ȣϿ���%�R��R�q�~�B���Lf�/�C]0E�bh��ߺ�eʼwi��ՙ����e\`��i�� (罴Lƛ�0�����l��������h�%�tUP�Q�Ĺ�a�_�J���)�Y��V�z��6
qS �-�T ��'���{�a�������r��<��&�w6���R2���_�2�6+�� �4	�����۰���o_��w�yR��u;�eDę�(�o�����5"H��L?t	g�< B�u2p��������{u~�ȵ�5��D| ��
�G�5��Bu�ר��E�ϷF���ț;y%�������s~���D�ـA;o~�HRJSSJxE{�������G~�ϴ�b���/j��V>�O������o� ������}��WSx1� @�Oq��}u�j`�F�_������k_���͂;�      �      x������ � �     