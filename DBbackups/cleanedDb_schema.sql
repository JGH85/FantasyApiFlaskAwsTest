PGDMP     '    "             
    w            fantasydata2018test    11.3    11.3 &    3           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            4           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            5           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            6           1262    16570    fantasydata2018test    DATABASE     �   CREATE DATABASE fantasydata2018test WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
 #   DROP DATABASE fantasydata2018test;
             postgres    false            �            1259    24792    game    TABLE     �   CREATE TABLE public.game (
    game_id integer NOT NULL,
    week integer NOT NULL,
    year integer NOT NULL,
    home_team_id integer NOT NULL,
    away_team_id integer NOT NULL
);
    DROP TABLE public.game;
       public         postgres    false            �            1259    24790    game_game_id_seq    SEQUENCE     �   CREATE SEQUENCE public.game_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.game_game_id_seq;
       public       postgres    false    206            7           0    0    game_game_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.game_game_id_seq OWNED BY public.game.game_id;
            public       postgres    false    205            �            1259    24751    player    TABLE     �   CREATE TABLE public.player (
    player_id integer NOT NULL,
    name text NOT NULL,
    "position" integer NOT NULL,
    gid integer NOT NULL
);
    DROP TABLE public.player;
       public         postgres    false            �            1259    24784    player_game    TABLE     �   CREATE TABLE public.player_game (
    player_game_id integer NOT NULL,
    game_id integer NOT NULL,
    player_id integer NOT NULL,
    dk_salary integer,
    fd_salary integer,
    dk_points double precision,
    fd_points double precision
);
    DROP TABLE public.player_game;
       public         postgres    false            �            1259    24782    player_game_player_game_id_seq    SEQUENCE     �   CREATE SEQUENCE public.player_game_player_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.player_game_player_game_id_seq;
       public       postgres    false    204            8           0    0    player_game_player_game_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.player_game_player_game_id_seq OWNED BY public.player_game.player_game_id;
            public       postgres    false    203            �            1259    24749    player_player_id_seq    SEQUENCE     �   CREATE SEQUENCE public.player_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.player_player_id_seq;
       public       postgres    false    198            9           0    0    player_player_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.player_player_id_seq OWNED BY public.player.player_id;
            public       postgres    false    197            �            1259    16579    players    TABLE     M  CREATE TABLE public.players (
    index bigint,
    week double precision,
    year double precision,
    gid double precision,
    name text,
    pos text,
    team text,
    "h/a" text,
    oppt text,
    dk_points double precision,
    dk_salary double precision,
    fd_points double precision,
    fd_salary double precision
);
    DROP TABLE public.players;
       public         postgres    false            �            1259    24836    players_cleaned    TABLE     U  CREATE TABLE public.players_cleaned (
    index bigint,
    week double precision,
    year double precision,
    gid double precision,
    name text,
    pos text,
    team text,
    "h/a" text,
    oppt text,
    dk_points double precision,
    dk_salary double precision,
    fd_points double precision,
    fd_salary double precision
);
 #   DROP TABLE public.players_cleaned;
       public         postgres    false            �            1259    24773    position    TABLE     �   CREATE TABLE public."position" (
    position_id integer NOT NULL,
    position_name text,
    flex_yn boolean,
    abbreviation text NOT NULL
);
    DROP TABLE public."position";
       public         postgres    false            �            1259    24771    position_position_id_seq    SEQUENCE     �   CREATE SEQUENCE public.position_position_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.position_position_id_seq;
       public       postgres    false    202            :           0    0    position_position_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.position_position_id_seq OWNED BY public."position".position_id;
            public       postgres    false    201            �            1259    24762    team    TABLE     }   CREATE TABLE public.team (
    team_id integer NOT NULL,
    abbreviation text NOT NULL,
    city text,
    teamname text
);
    DROP TABLE public.team;
       public         postgres    false            �            1259    24760    team_team_id_seq    SEQUENCE     �   CREATE SEQUENCE public.team_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.team_team_id_seq;
       public       postgres    false    200            ;           0    0    team_team_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.team_team_id_seq OWNED BY public.team.team_id;
            public       postgres    false    199            �
           2604    24795    game game_id    DEFAULT     l   ALTER TABLE ONLY public.game ALTER COLUMN game_id SET DEFAULT nextval('public.game_game_id_seq'::regclass);
 ;   ALTER TABLE public.game ALTER COLUMN game_id DROP DEFAULT;
       public       postgres    false    205    206    206            �
           2604    24754    player player_id    DEFAULT     t   ALTER TABLE ONLY public.player ALTER COLUMN player_id SET DEFAULT nextval('public.player_player_id_seq'::regclass);
 ?   ALTER TABLE public.player ALTER COLUMN player_id DROP DEFAULT;
       public       postgres    false    198    197    198            �
           2604    24787    player_game player_game_id    DEFAULT     �   ALTER TABLE ONLY public.player_game ALTER COLUMN player_game_id SET DEFAULT nextval('public.player_game_player_game_id_seq'::regclass);
 I   ALTER TABLE public.player_game ALTER COLUMN player_game_id DROP DEFAULT;
       public       postgres    false    203    204    204            �
           2604    24776    position position_id    DEFAULT     ~   ALTER TABLE ONLY public."position" ALTER COLUMN position_id SET DEFAULT nextval('public.position_position_id_seq'::regclass);
 E   ALTER TABLE public."position" ALTER COLUMN position_id DROP DEFAULT;
       public       postgres    false    201    202    202            �
           2604    24765    team team_id    DEFAULT     l   ALTER TABLE ONLY public.team ALTER COLUMN team_id SET DEFAULT nextval('public.team_team_id_seq'::regclass);
 ;   ALTER TABLE public.team ALTER COLUMN team_id DROP DEFAULT;
       public       postgres    false    199    200    200            �
           2606    24797    game pk_game 
   CONSTRAINT     O   ALTER TABLE ONLY public.game
    ADD CONSTRAINT pk_game PRIMARY KEY (game_id);
 6   ALTER TABLE ONLY public.game DROP CONSTRAINT pk_game;
       public         postgres    false    206            �
           2606    24759    player pk_player 
   CONSTRAINT     U   ALTER TABLE ONLY public.player
    ADD CONSTRAINT pk_player PRIMARY KEY (player_id);
 :   ALTER TABLE ONLY public.player DROP CONSTRAINT pk_player;
       public         postgres    false    198            �
           2606    24789    player_game pk_player_game 
   CONSTRAINT     d   ALTER TABLE ONLY public.player_game
    ADD CONSTRAINT pk_player_game PRIMARY KEY (player_game_id);
 D   ALTER TABLE ONLY public.player_game DROP CONSTRAINT pk_player_game;
       public         postgres    false    204            �
           2606    24781    position pk_position 
   CONSTRAINT     ]   ALTER TABLE ONLY public."position"
    ADD CONSTRAINT pk_position PRIMARY KEY (position_id);
 @   ALTER TABLE ONLY public."position" DROP CONSTRAINT pk_position;
       public         postgres    false    202            �
           2606    24770    team pk_team 
   CONSTRAINT     O   ALTER TABLE ONLY public.team
    ADD CONSTRAINT pk_team PRIMARY KEY (team_id);
 6   ALTER TABLE ONLY public.team DROP CONSTRAINT pk_team;
       public         postgres    false    200            �
           1259    24828    idx_player_name    INDEX     B   CREATE INDEX idx_player_name ON public.player USING btree (name);
 #   DROP INDEX public.idx_player_name;
       public         postgres    false    198            �
           1259    16585    ix_players_index    INDEX     E   CREATE INDEX ix_players_index ON public.players USING btree (index);
 $   DROP INDEX public.ix_players_index;
       public         postgres    false    196            �
           2606    24813    game fk_game_away_team_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.game
    ADD CONSTRAINT fk_game_away_team_id FOREIGN KEY (away_team_id) REFERENCES public.team(team_id);
 C   ALTER TABLE ONLY public.game DROP CONSTRAINT fk_game_away_team_id;
       public       postgres    false    206    200    2732            �
           2606    24808    game fk_game_home_team_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.game
    ADD CONSTRAINT fk_game_home_team_id FOREIGN KEY (home_team_id) REFERENCES public.team(team_id);
 C   ALTER TABLE ONLY public.game DROP CONSTRAINT fk_game_home_team_id;
       public       postgres    false    206    2732    200            �
           2606    24818 "   player_game fk_player_game_game_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.player_game
    ADD CONSTRAINT fk_player_game_game_id FOREIGN KEY (game_id) REFERENCES public.game(game_id);
 L   ALTER TABLE ONLY public.player_game DROP CONSTRAINT fk_player_game_game_id;
       public       postgres    false    206    2738    204            �
           2606    24823 $   player_game fk_player_game_player_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.player_game
    ADD CONSTRAINT fk_player_game_player_id FOREIGN KEY (player_id) REFERENCES public.player(player_id);
 N   ALTER TABLE ONLY public.player_game DROP CONSTRAINT fk_player_game_player_id;
       public       postgres    false    198    2730    204            �
           2606    24798    player fk_player_position    FK CONSTRAINT     �   ALTER TABLE ONLY public.player
    ADD CONSTRAINT fk_player_position FOREIGN KEY ("position") REFERENCES public."position"(position_id);
 C   ALTER TABLE ONLY public.player DROP CONSTRAINT fk_player_position;
       public       postgres    false    202    2734    198           