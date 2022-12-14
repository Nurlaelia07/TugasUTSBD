PGDMP     :    /        	        z            retail    14.6    14.6                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16394    retail    DATABASE     j   CREATE DATABASE retail WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE retail;
                postgres    false                       0    0    DATABASE retail    COMMENT     #   COMMENT ON DATABASE retail IS '.';
                   postgres    false    3334            ?            1259    16400    barang    TABLE     ?   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying(100) NOT NULL,
    harga integer,
    stok integer,
    id_supplier integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false            ?            1259    16410    pembeli    TABLE     ?   CREATE TABLE public.pembeli (
    id_pembeli integer NOT NULL,
    nama_pembeli character varying(30) NOT NULL,
    jk character(1),
    no_telp character(15),
    alamat character varying(50)
);
    DROP TABLE public.pembeli;
       public         heap    postgres    false            ?            1259    16395    supplier    TABLE     ?   CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(30) NOT NULL,
    no_telp character(15),
    alamat character varying(100)
);
    DROP TABLE public.supplier;
       public         heap    postgres    false            ?            1259    16405 	   transaksi    TABLE     ?   CREATE TABLE public.transaksi (
    id_transaksi integer NOT NULL,
    id_barang integer,
    id_pembeli integer,
    tanggal date,
    keterangan character varying(100)
);
    DROP TABLE public.transaksi;
       public         heap    postgres    false            ?          0    16400    barang 
   TABLE DATA           R   COPY public.barang (id_barang, nama_barang, harga, stok, id_supplier) FROM stdin;
    public          postgres    false    210   C                  0    16410    pembeli 
   TABLE DATA           P   COPY public.pembeli (id_pembeli, nama_pembeli, jk, no_telp, alamat) FROM stdin;
    public          postgres    false    212   K       ?          0    16395    supplier 
   TABLE DATA           O   COPY public.supplier (id_supplier, nama_supplier, no_telp, alamat) FROM stdin;
    public          postgres    false    209   W       ?          0    16405 	   transaksi 
   TABLE DATA           ]   COPY public.transaksi (id_transaksi, id_barang, id_pembeli, tanggal, keterangan) FROM stdin;
    public          postgres    false    211   ?       j           2606    16404    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    210            n           2606    16414    pembeli pembeli_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (id_pembeli);
 >   ALTER TABLE ONLY public.pembeli DROP CONSTRAINT pembeli_pkey;
       public            postgres    false    212            h           2606    16399    supplier supplier_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    209            l           2606    16409    transaksi transaksi_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (id_transaksi);
 B   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pkey;
       public            postgres    false    211            q           2606    16430    transaksi fk_barang_transaksi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT fk_barang_transaksi FOREIGN KEY (id_barang) REFERENCES public.barang(id_barang) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT fk_barang_transaksi;
       public          postgres    false    3178    211    210            p           2606    16425    transaksi fk_pembeli_transaksi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT fk_pembeli_transaksi FOREIGN KEY (id_pembeli) REFERENCES public.pembeli(id_pembeli) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT fk_pembeli_transaksi;
       public          postgres    false    3182    211    212            o           2606    16420    barang fk_supplier_barang    FK CONSTRAINT     ?   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT fk_supplier_barang FOREIGN KEY (id_supplier) REFERENCES public.supplier(id_supplier) ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.barang DROP CONSTRAINT fk_supplier_barang;
       public          postgres    false    210    3176    209            ?   ?   x?M??N?0??????8i??Ȅvڤi=p?JD]R?E?<=NS?V$?b?J??q?PJJ	Z???
7??f?S?????;??$.?͒?a???W?`????)N ?Es?????/??ԡ??e?Z?ߖ?g?<k?V?5N~(??A??j???|Q??{7?Z???Ez??#??m'?4C?????7??0p??t?ME3?q?_ɔ3GAW???w??A%?6òI?0!gBG"?Q&#^???wV?          ?   x?u??N?@???)x3???Ĵ??.t?qs?X????:1??3?PH??˜s?(ƩDe?%?r-ӹP?HSz?kaq0h?=??[?Qd?Ĳ<nw??/?	Hҫ?FoĒQ??G?+??tTgX*c?XP?3T|B?8VM?=?qnp%R????$??cfB?)h?????????QwC?e'?56v??V?_z???ʸt a??⊲9??h?IzC??~?Ѱ???)E[_?9?o?ٿrMO>^6j*ǥ???$?Ϲ?G      ?   N  x?m??N?0?kx?>?BK????g??d3?ě?ԍڥ?????0?3?pA?????4?I?[T??'X蓬yN/3YB???9?)?X??????X????ѣ˃[??|?D?^?Qi??????0?X.???M?F?ZT"???}?dK;?B?L6?T?C?,d?Y ?F??w?j?l??vj?˗?z?q+4E??ϝ?!?????e?.@???X??N?,~RJ?? y?75D0?b~u2(???tjc?ON9^?9?↯?'???u?ʚy????F?2?}{???[??V???iҩr???????N??\P<,?sT*???p?f??u????C?      ?   ?   x?U??j1D??_?Hɽ??l?A?[?? ?H1?E???Ր???3???,)???2??X??;?????????6?Pׁ?J???S?+?Ri0?:?p=?o??NG?#??Zq?4???Q??N?S?dl?LV1$?[?S+?
?5JAmҜ?~?????????G٭?`
H?NB?̩U9_ʬ?ǜ?Q??????iL	IO????\??b ?y !?h?????j?F??{?s?z??m??Ig?     