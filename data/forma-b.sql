--
-- PostgreSQL database dump
--

\restrict zXVjPh6JYHnB8JY1ejneCcZZgNT7NOQBFK7CTzjLAKNdjHEQBWpmTeLxSabCEVo

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-06-16 02:39:06

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5033 (class 0 OID 16505)
-- Dependencies: 221
-- Data for Name: cuestionario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cuestionario (id, activo, descripcion, forma, nombre, tiempominutos) VALUES ('d4423a21f5a8c6eec452f80d3fab953d', true, 'Test de razonamiento numerico y logico', 'FORMA_A', 'Razonamiento Forma A', 10);
INSERT INTO public.cuestionario (id, activo, descripcion, forma, nombre, tiempominutos) VALUES ('2dab9b3a5c258b45477fcd779f3dbe7e', true, 'Test de razonamiento verbal y analogias', 'FORMA_B', 'Razonamiento Forma B', 12);


--
-- TOC entry 5035 (class 0 OID 16536)
-- Dependencies: 225
-- Data for Name: pregunta; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('67749adc3de84008da6cbc9d4ecbaaf7', '1 - 3 - 5 - 7 - ___ - 11 - 13', 1, 1, 'SERIE', 'd4423a21f5a8c6eec452f80d3fab953d');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('8c72757a1a603cf61e9b65f911f9ee63', '33 - 34 - 31 - 32 - ___ - 34 - 31 - 32', 2, 2, 'SERIE', 'd4423a21f5a8c6eec452f80d3fab953d');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('2fbd0fbf5648205c518c9f9b9306c1a5', 'A—B — D—G — K— ____ — ____', 2, 2, 'SERIE', '2dab9b3a5c258b45477fcd779f3dbe7e');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('db3f80ef3109243bbcb5a755ad5a958a', 'VINO es a VIÑA como VIRUTA es a ____', 3, 3, 'ANALOGIA', '2dab9b3a5c258b45477fcd779f3dbe7e');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('91c4ae7a5c8b86d243e94f964664bd53', 'POCO es a MUCHO como BREVE es a ____', 7, 7, 'ANALOGIA', '2dab9b3a5c258b45477fcd779f3dbe7e');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('efa9ea7e1f29a5ec473cb24145afdeee', 'Una ilusionista saca de una caja cuatro cajistas: una blanca, una azul, una verde, una anaranjada; de la blanca, saca tres nuevas cajas; de la azul, cuatro cajas; de la verde, una paloma; de la anaranjada, un pañuelo rojo. ¿Cuántas cajas usa en total?', 10, 10, 'PROBLEMA_LOGICO', '2dab9b3a5c258b45477fcd779f3dbe7e');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('e631b03751eb6e51395906313ea2ebfa', 'OJO es a VISTA como OREJA es a ____', 13, 13, 'ANALOGIA', '2dab9b3a5c258b45477fcd779f3dbe7e');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('d25acfc9aafcf99ee96c269c9e20b9e4', '103, 102, 109, 104, 101, 106, 105, 108, 100, ____', 15, 15, 'SERIE', '2dab9b3a5c258b45477fcd779f3dbe7e');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('0ac933a1168d8a3cca8871cfb958bc52', 'PEZ es a MAR como TOPO es a ____', 17, 17, 'ANALOGIA', '2dab9b3a5c258b45477fcd779f3dbe7e');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('2f279cd6c7bd7f7c8e1ac10f222085e2', 'Si un paracaídas de 1 metro de diámetro puede sostener una carga de 5 kilogramos, un paracaídas de 3 metros de diámetro puede sostener ____', 20, 20, 'PROBLEMA_LOGICO', '2dab9b3a5c258b45477fcd779f3dbe7e');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('5aca1a96aeee26da7486180221cbd76a', 'HOY es a AYER como CRUCERO es a ___', 23, 23, 'ANALOGIA', '2dab9b3a5c258b45477fcd779f3dbe7e');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('93153e1c0bca797986e8e317c812dd69', 'ABC, KOT, AJT, ____', 26, 26, 'SERIE', '2dab9b3a5c258b45477fcd779f3dbe7e');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('802379c3ab7cbd26bca2ac04168c5ffa', 'MINISTRO es a GOBIERNO como LADO es a ____', 27, 27, 'ANALOGIA', '2dab9b3a5c258b45477fcd779f3dbe7e');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('ee9e7f482b0a36f87a0ec29efad962ff', '5 - 6 - 8 - 11 __ - 20 - 26 ', 3, 3, 'SERIE', 'd4423a21f5a8c6eec452f80d3fab953d');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('fc26f9e1563bb452cad7a5c91ec69e60', '25 - 23 - 21 - 20 -25 - __ - 21', 4, 4, 'SERIE', 'd4423a21f5a8c6eec452f80d3fab953d');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('64401c75591c9c1ade5c0bd4b947d776', '1 - 6 - 2 - 7 - 4 - 9 - 7 - __ - 11', 5, 5, 'SERIE', 'd4423a21f5a8c6eec452f80d3fab953d');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('30a0177e69615fd41d14a2703ae21a19', '21 - __ - 15 - 12 - 9 - 8', 6, 6, 'SERIE', 'd4423a21f5a8c6eec452f80d3fab953d');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('ecadd6538251cea92abb8be0864e7314', '18 - 16 - __ - 17 - 15 - 15 - 16 - 14', 7, 7, 'SERIE', 'd4423a21f5a8c6eec452f80d3fab953d');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('663e7b93b5cae413575cc3e9e813ad5b', '6 - 3 - 5 - 7 - 4 - __ - 8 - 5 - 7 - 9', 8, 8, 'SERIE', 'd4423a21f5a8c6eec452f80d3fab953d');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('4028809b9ecf55b4019ecf66320c0000', 'Pedro posee ciento noventa y dos bolas; da la mitad
a Santiago; de las que quedan da la tercera parte
a Francisco, después da la cuarta parte de las que le
quedan a Juan y finalmente de las que le quedan da
las tres cuartas partes a Marcos.
¿Cuántas bolas le quedan?', 30, 30, 'PROBLEMA_LOGICO', '2dab9b3a5c258b45477fcd779f3dbe7e');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('a08fd8d53a3d6f410f0d2b534561aab8', 'duro — rudo; rabos — ____', 1, 1, 'VERBAL', '2dab9b3a5c258b45477fcd779f3dbe7e');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('7cea14c1074324b5f7f04123945c36a4', 'lenguado — 1235678; 752163 ____', 4, 4, 'VERBAL', '2dab9b3a5c258b45477fcd779f3dbe7e');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('43e3380e4bd91b4d7c19abeea5bcbe39', '13542 — 24653 — 35764 ____', 5, 5, 'SERIE', '2dab9b3a5c258b45477fcd779f3dbe7e');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('94005ad157ef542b197ee1bca50a726e', 'a — m — c — o — r — q — g ____', 6, 6, 'SERIE', '2dab9b3a5c258b45477fcd779f3dbe7e');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('1fcb3da4ac543fcf1d9465de66f679fd', 'cicuta—cita; radioyente—trae; ascensor ____', 8, 8, 'VERBAL', '2dab9b3a5c258b45477fcd779f3dbe7e');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('9b26f3cd4ba7f7f2ab9d1e9f5f6c8b7a', 'BACAB — FEGEF — JIKIJ ____', 9, 9, 'SERIE', '2dab9b3a5c258b45477fcd779f3dbe7e');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('f66686a602319eb2d0c1824a0d312348', '8—negligir; 7—notario; 4—azul; ____—negligente', 11, 11, 'VERBAL', '2dab9b3a5c258b45477fcd779f3dbe7e');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('5003cd0a80dab708649e8e8241f4b8cf', 'd—c—b—e—d—c—f—e——', 12, 12, 'SERIE', '2dab9b3a5c258b45477fcd779f3dbe7e');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('24548aefd417220e5740427aa09b435e', 'limitado—reducido—lacónico—resumido—____', 14, 14, 'NUMERICA', '2dab9b3a5c258b45477fcd779f3dbe7e');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('6c1e3fdc16f154632b1911225b046aa6', 'JLK—NPO—RTS—____', 16, 16, 'SERIE', '2dab9b3a5c258b45477fcd779f3dbe7e');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('b0c9d7ab7a29f02940b953daa59bfded', 'química—máquina; nimedgo—____', 18, 18, 'VERBAL', '2dab9b3a5c258b45477fcd779f3dbe7e');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('f6841eb684054779bb0283875d0d235d', '312—BAC; 571—____', 19, 19, 'VERBAL', '2dab9b3a5c258b45477fcd779f3dbe7e');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('cafbd01c3e1aee850c3af8f12626e296', '91—73—55—____', 21, 21, 'SERIE', '2dab9b3a5c258b45477fcd779f3dbe7e');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('e085fe546461a8ad612ca52ac4cccb93', 'P2S1—SP; S31E5N2E4—____', 22, 22, 'NUMERICA', '2dab9b3a5c258b45477fcd779f3dbe7e');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('fd22a9a7e293fd822cf19305458aa15a', 'bol—óbolo; ion—ilusionista; su—____', 24, 23, 'VERBAL', '2dab9b3a5c258b45477fcd779f3dbe7e');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('043e62a9167a1f64baa202183ecca397', 'I—1; XIV—5; XII—4; VI—____', 25, 25, 'SERIE', '2dab9b3a5c258b45477fcd779f3dbe7e');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('9683b831ce1f3a9c728b604643160944', 'valla—122; serenas—22111; codiciada—____', 28, 28, 'SERIE', '2dab9b3a5c258b45477fcd779f3dbe7e');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('f76211e49e1203653992f2c8c325f5f6', '10—diezmar; 100—ciencia; 1000—____', 29, 29, 'VERBAL', '2dab9b3a5c258b45477fcd779f3dbe7e');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('77bab22b77799d7410d69c98d0d2a534', '1 – 9 – 25 – □ – 81 – 121', 9, 9, 'SERIE', 'd4423a21f5a8c6eec452f80d3fab953d');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('4cd212d46f1994c259052d5d5b851500', '1 – 3 – 3 – 2 – □ – 8 – 3 – 5 – 15', 10, 10, 'SERIE', 'd4423a21f5a8c6eec452f80d3fab953d');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('8c086cf072b8b50a0b9b70d0c5e68873', '22 – 17 – 12 – 27 – 23 – □ – 32 – 29', 11, 11, 'SERIE', 'd4423a21f5a8c6eec452f80d3fab953d');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('6467c54a4ef693d208dd8fc63f1fa5e1', '3 – 4 – 7 – 14 – 7 – 8 – □ – 30 – 11', 12, 12, 'SERIE', 'd4423a21f5a8c6eec452f80d3fab953d');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('2ceba210c6e839cbcc7093997993d1da', '45 – 34 – 25 – □ – 13 – 10 – 9', 13, 13, 'SERIE', 'd4423a21f5a8c6eec452f80d3fab953d');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('d66df32a93fcc6e3bb081f98c64674c0', '5 – 3 – 15 – 16 – 7 – 5 – 35 – 36 – □', 14, 14, 'SERIE', 'd4423a21f5a8c6eec452f80d3fab953d');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('2e9fea1f3d5399729bed762cb4521920', '□ – 21 – 28 – 74 – 81 – 243', 15, 15, 'SERIE', 'd4423a21f5a8c6eec452f80d3fab953d');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('36ac58d1601adecd4fe22dfb80f5fa49', '□ – 18 – 9 – 54 – 45 – 270 – 261', 16, 16, 'SERIE', 'd4423a21f5a8c6eec452f80d3fab953d');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('0c75d60d90e6b6065bc1031a92326e96', '13 – 12 – 60 – □ – 62 – 310 – 313', 17, 17, 'SERIE', 'd4423a21f5a8c6eec452f80d3fab953d');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('2af26c1241cee7d4a47e25cc7c54aa83', '27 – 9 – 54 – 63 – □ – 126 – 135 – 45', 18, 18, 'SERIE', 'd4423a21f5a8c6eec452f80d3fab953d');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('dcbae2bafa5f529d32c69f7d168a4882', '7 – 16 – 5 – 35 – □ – 33 – 231 – 240', 19, 19, 'SERIE', 'd4423a21f5a8c6eec452f80d3fab953d');
INSERT INTO public.pregunta (id, enunciado, numero, orden, tipopregunta, cuestionario_id) VALUES ('e3e8ce8d7a01aacefc55a9864afaa230', '□ – 11 – 8 – 72 – 65 – 62 – 558 – 551', 20, 20, 'SERIE', 'd4423a21f5a8c6eec452f80d3fab953d');


--
-- TOC entry 5034 (class 0 OID 16522)
-- Dependencies: 223
-- Data for Name: opcionrespuesta; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('283071ab590d8a53e89f765ace524d29', false, 'A', '8', '67749adc3de84008da6cbc9d4ecbaaf7');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('89d3ea3c3c14890e077292be4c234add', true, 'B', '9', '67749adc3de84008da6cbc9d4ecbaaf7');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('321b2dcc89f06597333d886bbbcae811', false, 'C', '10', '67749adc3de84008da6cbc9d4ecbaaf7');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('ed9759f2a6b9bbbcd415d18a0c03e7b2', false, 'D', '11', '67749adc3de84008da6cbc9d4ecbaaf7');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('7401bea882678052d9d9105248fc0bbf', false, 'A', 'colar', 'a08fd8d53a3d6f410f0d2b534561aab8');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('dabe1a9eec75590496628e85065b4dd7', false, 'B', 'parar', 'a08fd8d53a3d6f410f0d2b534561aab8');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('001ea8d02b031455d4e11db93950efbc', false, 'C', 'sobar', 'a08fd8d53a3d6f410f0d2b534561aab8');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('911d478d52e229396a67629c47b19abe', true, 'D', 'durar', 'a08fd8d53a3d6f410f0d2b534561aab8');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('a0d731299e0caf6326913845dbaa3e62', false, 'A', 'SIERRA', 'db3f80ef3109243bbcb5a755ad5a958a');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('33c7eb4fb7a4610f5a889a27e7b54a59', false, 'B', 'GARLOPA', 'db3f80ef3109243bbcb5a755ad5a958a');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('691656869bdd9cb6e81cdabbaccf276b', true, 'C', 'ARPITERO', 'db3f80ef3109243bbcb5a755ad5a958a');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('a0a38974860c2c68cd36dd635661cb2d', false, 'D', 'MADERA', 'db3f80ef3109243bbcb5a755ad5a958a');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('3ab7073268a240e1e2ccd395ceb4bc41', false, 'A', 'duelo', '7cea14c1074324b5f7f04123945c36a4');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('aae95860f7ca51d117616a550fb9cd2e', false, 'B', 'legado', '7cea14c1074324b5f7f04123945c36a4');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('846206b03f03c9b4c043891efe82d697', true, 'C', 'dogal', '7cea14c1074324b5f7f04123945c36a4');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('38037c5990137f8052dccdc0843175ca', false, 'D', 'duelan', '7cea14c1074324b5f7f04123945c36a4');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('3aa8313fd2e513b8e5dd6fb6eab88dff', false, 'A', '48576', '43e3380e4bd91b4d7c19abeea5bcbe39');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('e2f78dc521bffd172228d22a4c7fe919', false, 'B', '46875', '43e3380e4bd91b4d7c19abeea5bcbe39');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('cf4508d4484a4f8c3ea48098744d3f64', false, 'C', '57864', '43e3380e4bd91b4d7c19abeea5bcbe39');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('86e96a6a5fb79f60706d843a8071eb91', true, 'D', '47588', '43e3380e4bd91b4d7c19abeea5bcbe39');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('a87344e5c93f7e9bc5e79e385c4397f5', false, 'A', '13', 'ee9e7f482b0a36f87a0ec29efad962ff');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('1a12a592dddcd207856abc2c3fa39ed4', true, 'B', '15', 'ee9e7f482b0a36f87a0ec29efad962ff');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('bc8b8c7cb54fb0ee468614ad9fcbcd47', false, 'C', '17', 'ee9e7f482b0a36f87a0ec29efad962ff');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('d5778a9c591cf732a602ec4a8f439d82', false, 'D', '19', 'ee9e7f482b0a36f87a0ec29efad962ff');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('791309ef783ea275248b6e712e0f0e8e', false, 'A', '20', 'fc26f9e1563bb452cad7a5c91ec69e60');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('956f28391d06a8d88a3c5893590672bb', false, 'B', '25', 'fc26f9e1563bb452cad7a5c91ec69e60');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('0cb870585ef70041669ac371fe2ea647', false, 'C', '21', 'fc26f9e1563bb452cad7a5c91ec69e60');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('bacd9de2ad7f91b3078b4c3b5a8d2afb', true, 'D', '23', 'fc26f9e1563bb452cad7a5c91ec69e60');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('fb4cddd657a9a5885cb0792630ec9c6d', false, 'A', '10', '64401c75591c9c1ade5c0bd4b947d776');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('fa80788aa1d2fe75c5ecb580bc81b405', false, 'B', '11', '64401c75591c9c1ade5c0bd4b947d776');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('a84219af3d2f97585d0456b26f70610d', true, 'C', '13', '64401c75591c9c1ade5c0bd4b947d776');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('5db4fc7b56999a6f055bede57e42ad9f', false, 'D', '13', '64401c75591c9c1ade5c0bd4b947d776');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('b6befbce6c005ebb254575ce33332ed7', false, 'A', '20', '30a0177e69615fd41d14a2703ae21a19');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('a85b48dc8681b3e9e7f6f652a494fd61', false, 'B', '19', '30a0177e69615fd41d14a2703ae21a19');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('014ca5f6bd514cb54d9bb672587e4acc', true, 'C', '18', '30a0177e69615fd41d14a2703ae21a19');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('367ddeca2a96021ea4fff8c37d3575f0', false, 'D', '17', '30a0177e69615fd41d14a2703ae21a19');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('ac8c282cada2fc8f7ba06f8ea29854de', true, 'A', '13', 'ecadd6538251cea92abb8be0864e7314');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('2aa96e6894f1f7ba7973dc285865d6b4', false, 'B', '14', 'ecadd6538251cea92abb8be0864e7314');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('3693ea7a5692cb87bbbc64366e43d0a8', false, 'C', '15', 'ecadd6538251cea92abb8be0864e7314');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('fabecb6b7db2614e132c78f479058f79', false, 'D', '16', 'ecadd6538251cea92abb8be0864e7314');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('2a3cbb7ec795af781d7c81c6bad3072a', true, 'A', '6', '663e7b93b5cae413575cc3e9e813ad5b');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('6f6e7bca444c454f51b55c2096ae95c1', false, 'B', '5', '663e7b93b5cae413575cc3e9e813ad5b');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('73e47aaad5e73863f3b71b243974c801', false, 'C', '7', '663e7b93b5cae413575cc3e9e813ad5b');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('3a823c042c10460343b4a1d4909a8714', false, 'D', '11', '663e7b93b5cae413575cc3e9e813ad5b');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('a50e84f6bd3bd2bd00a1f7a19045e601', false, 'A', '36', '77bab22b77799d7410d69c98d0d2a534');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('f6a4a71416a7d9a4e19c80c853187432', true, 'B', '49', '77bab22b77799d7410d69c98d0d2a534');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('2e9dac1e99a880a105d029a2f4e5c382', false, 'C', '64', '77bab22b77799d7410d69c98d0d2a534');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('f5e61fb1ffec1d749c7a629704dcb1b1', false, 'D', '15', '77bab22b77799d7410d69c98d0d2a534');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('3752ecb554fbff307cd46543600582dc', false, 'A', '3', '4cd212d46f1994c259052d5d5b851500');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('e50d3fcd5fa1a546ed6684eabd73bc39', true, 'B', '4', '4cd212d46f1994c259052d5d5b851500');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('308f05a4f871f50bddf9bbb209e8364f', false, 'C', '5', '4cd212d46f1994c259052d5d5b851500');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('0dd797437cdea1c04df3ee4537602864', false, 'D', '6', '4cd212d46f1994c259052d5d5b851500');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('c5e7c877dde0667b82165949c01dae1e', false, 'A', '7', '8c086cf072b8b50a0b9b70d0c5e68873');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('6fc3413781d5b5ba5bada767c44461dd', false, 'B', '22', '8c086cf072b8b50a0b9b70d0c5e68873');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('88f8c3565e13dbaece2fb1747f94f65c', true, 'C', '19', '8c086cf072b8b50a0b9b70d0c5e68873');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('3820c38203710aaed4b7ce97307c6cb6', false, 'D', '18', '8c086cf072b8b50a0b9b70d0c5e68873');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('329b712ca108858c3db26482bb0a5907', false, 'A', '13', '6467c54a4ef693d208dd8fc63f1fa5e1');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('b07e865805d74283b06b5baceb36a6d5', false, 'B', '14', '6467c54a4ef693d208dd8fc63f1fa5e1');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('2024203fdd17611e4d3a30dc29fa7d87', true, 'C', '15', '6467c54a4ef693d208dd8fc63f1fa5e1');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('67d2aefacf90817a73ce63eb9bb29a30', false, 'D', '16', '6467c54a4ef693d208dd8fc63f1fa5e1');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('a25ffdb4cb177a781bfed9b929080c5d', false, 'A', '20', '2ceba210c6e839cbcc7093997993d1da');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('65b0d7cc25003be8f85d34fdd3fd6d7a', false, 'B', '19', '2ceba210c6e839cbcc7093997993d1da');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('bb4d4bc2a9189cb1efb88deccc9fc8a9', false, 'C', '17', '2ceba210c6e839cbcc7093997993d1da');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('3021991768bfe5029e18afd561a1cd6b', true, 'D', '18', '2ceba210c6e839cbcc7093997993d1da');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('ddaaf29759e5d7cf3ac1e37f611706b5', false, 'A', '6', 'd66df32a93fcc6e3bb081f98c64674c0');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('86e4e7768a0f3c144b02098fae10dfff', true, 'B', '9', 'd66df32a93fcc6e3bb081f98c64674c0');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('dc3708bc85bfefb60e15d8042247aaa0', false, 'C', '8', 'd66df32a93fcc6e3bb081f98c64674c0');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('2aeee365cd9802138258feb3b1435db9', false, 'D', '34', 'd66df32a93fcc6e3bb081f98c64674c0');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('fe593aa9a4097866bf1d6f76c13ad23a', false, 'A', '3', '2e9fea1f3d5399729bed762cb4521920');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('079ffee76149e309230b27524cf7cf9e', false, 'B', '9', '2e9fea1f3d5399729bed762cb4521920');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('dd530f7efb7de7ea5323b017c86afeba', false, 'C', '6', '2e9fea1f3d5399729bed762cb4521920');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('3fc2b860c28220f52cc9e984375f9233', true, 'D', '7', '2e9fea1f3d5399729bed762cb4521920');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('f9d1bb1f8d22fc098c2dffe7bf87f353', true, 'B', 'P -- V', '2fbd0fbf5648205c518c9f9b9306c1a5');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('b0bbaae5800b0eb6a96117bfa072451e', false, 'C', 'P -- U', '2fbd0fbf5648205c518c9f9b9306c1a5');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('ac14a3e53e33166848aa05ba8f570544', false, 'D', 'R -- W', '2fbd0fbf5648205c518c9f9b9306c1a5');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('64634175d28abfe68c1fceac5af82452', true, 'A', 's -- e', '94005ad157ef542b197ee1bca50a726e');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('01b3f9dd98dc6567552ddf8a2f728adb', false, 'B', 'i -- l', '94005ad157ef542b197ee1bca50a726e');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('1bf7ad542f1d6f6a7387994ec3a91f9f', false, 'C', 's -- l', '94005ad157ef542b197ee1bca50a726e');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('988ec0306c6b000c243dfbad0a611466', false, 'A', '9', '36ac58d1601adecd4fe22dfb80f5fa49');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('1caca5f249159a2b60625b7ba8fb2dba', false, 'B', '18', '36ac58d1601adecd4fe22dfb80f5fa49');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('e1be39e7a2d497314ada5a0284bc9d89', true, 'C', '3', '36ac58d1601adecd4fe22dfb80f5fa49');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('9819290e248f5479846180fbbeadac88', false, 'D', '6', '36ac58d1601adecd4fe22dfb80f5fa49');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('62c61c51b5ed78da47b9e48fbb8bae83', false, 'A', '61', '0c75d60d90e6b6065bc1031a92326e96');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('a7a4b205d0778ccf354963eacfbdced4', true, 'B', '63', '0c75d60d90e6b6065bc1031a92326e96');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('995eb2a2471b7d8c13ed9cf6fdb4863a', false, 'C', '59', '0c75d60d90e6b6065bc1031a92326e96');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('ecee74eae9a3e3a1b395b5fb4e4c2c33', false, 'D', '300', '0c75d60d90e6b6065bc1031a92326e96');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('59db933638f2f841428bdea3132f146a', true, 'A', '21', '2af26c1241cee7d4a47e25cc7c54aa83');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('f92e2943df79e11f7ac5537dc369e467', false, 'B', '72', '2af26c1241cee7d4a47e25cc7c54aa83');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('ebc6afa0bffd7a7b4ab1fa335f46f57f', false, 'C', '378', '2af26c1241cee7d4a47e25cc7c54aa83');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('07a03f028c83b84f843bf7e2c0ae576a', false, 'D', '19', '2af26c1241cee7d4a47e25cc7c54aa83');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('9874deb8ed685b58a3d54ea6b68850fc', false, 'A', '245', 'dcbae2bafa5f529d32c69f7d168a4882');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('1bd358ee3c25803f19c87b91e0552ad8', true, 'B', '49', 'dcbae2bafa5f529d32c69f7d168a4882');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('08250676bafb61465307ce33ff8afece', false, 'C', '64', 'dcbae2bafa5f529d32c69f7d168a4882');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('863a993d8083eab2c2475c196b0a4f99', false, 'D', '22', 'dcbae2bafa5f529d32c69f7d168a4882');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('05fc3a05a8039d00ba58a4e695191b76', false, 'A', '9', 'e3e8ce8d7a01aacefc55a9864afaa230');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('2bf4946d767defd3a93809af2195553b', true, 'B', '14', 'e3e8ce8d7a01aacefc55a9864afaa230');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('692a3824bddb6771f0d5b52ba1127506', false, 'C', '15', 'e3e8ce8d7a01aacefc55a9864afaa230');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('8a67d53394877d4ca4e73b2b5e8caf2c', false, 'D', '18', 'e3e8ce8d7a01aacefc55a9864afaa230');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('1ac9a358a2aa2e98c742515abdba52af', false, 'A', 'O -- U', '2fbd0fbf5648205c518c9f9b9306c1a5');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7699770001', false, 'D', 'h -- u', '94005ad157ef542b197ee1bca50a726e');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf770ef60002', false, 'A', 'ALTO', '91c4ae7a5c8b86d243e94f964664bd53');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf772f0b0003', false, 'B', 'CORTO', '91c4ae7a5c8b86d243e94f964664bd53');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7757de0004', false, 'C', 'EXTENSO', '91c4ae7a5c8b86d243e94f964664bd53');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf777a070005', true, 'D', 'GRANDE', '91c4ae7a5c8b86d243e94f964664bd53');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf77c8fb0006', false, 'A', 'cosa', '1fcb3da4ac543fcf1d9465de66f679fd');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf77dc810007', false, 'B', 'seno', '1fcb3da4ac543fcf1d9465de66f679fd');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf77ff9b0008', true, 'C', 'casa', '1fcb3da4ac543fcf1d9465de66f679fd');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7810910009', false, 'D', 'raso', '1fcb3da4ac543fcf1d9465de66f679fd');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7860b5000a', true, 'A', 'NMOMM', '9b26f3cd4ba7f7f2ab9d1e9f5f6c8b7a');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf787dff000b', false, 'B', 'MONOM', '9b26f3cd4ba7f7f2ab9d1e9f5f6c8b7a');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf78940e000c', false, 'C', 'ONPNO', '9b26f3cd4ba7f7f2ab9d1e9f5f6c8b7a');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf78b0f4000d', false, 'D', 'NOMON', '9b26f3cd4ba7f7f2ab9d1e9f5f6c8b7a');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf78fea0000e', false, 'A', '11', 'efa9ea7e1f29a5ec473cb24145afdeee');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf790d86000f', true, 'B', '12', 'efa9ea7e1f29a5ec473cb24145afdeee');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf792a830010', false, 'C', '14', 'efa9ea7e1f29a5ec473cb24145afdeee');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7940800011', false, 'D', '9', 'efa9ea7e1f29a5ec473cb24145afdeee');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7995820012', false, 'A', '3', 'f66686a602319eb2d0c1824a0d312348');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf79a6320013', false, 'B', '11', 'f66686a602319eb2d0c1824a0d312348');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf79b7310014', false, 'C', '19', 'f66686a602319eb2d0c1824a0d312348');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf79c3e30015', true, 'D', '10', 'f66686a602319eb2d0c1824a0d312348');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7a404e0016', false, 'A', 'f--h', '5003cd0a80dab708649e8e8241f4b8cf');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7a588a0017', true, 'B', 'g--k', '5003cd0a80dab708649e8e8241f4b8cf');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7a72e60018', false, 'C', 'd--h', '5003cd0a80dab708649e8e8241f4b8cf');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7a90340019', false, 'D', 'd--g', '5003cd0a80dab708649e8e8241f4b8cf');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7ae011001a', false, 'A', 'SONIDO', 'e631b03751eb6e51395906313ea2ebfa');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7af16d001b', false, 'B', 'OIDO', 'e631b03751eb6e51395906313ea2ebfa');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7b0760001c', true, 'C', 'AUDICION', 'e631b03751eb6e51395906313ea2ebfa');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7b1d3b001d', false, 'D', 'SERENATA', 'e631b03751eb6e51395906313ea2ebfa');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7b8187001e', false, 'A', 'acortado', '24548aefd417220e5740427aa09b435e');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7b9919001f', false, 'B', 'disminuido', '24548aefd417220e5740427aa09b435e');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7bc6250020', true, 'C', 'restringido', '24548aefd417220e5740427aa09b435e');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7bf4d30021', false, 'D', 'aminorado', '24548aefd417220e5740427aa09b435e');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7c44fd0022', true, 'A', '106', 'd25acfc9aafcf99ee96c269c9e20b9e4');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7c51680023', false, 'B', '110', 'd25acfc9aafcf99ee96c269c9e20b9e4');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7c5f8b0024', false, 'C', '107', 'd25acfc9aafcf99ee96c269c9e20b9e4');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7c6cbc0025', false, 'D', '111', 'd25acfc9aafcf99ee96c269c9e20b9e4');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7cafa50026', false, 'A', 'VXW', '6c1e3fdc16f154632b1911225b046aa6');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7ccb530027', true, 'B', 'UVW', '6c1e3fdc16f154632b1911225b046aa6');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7ce79a0028', false, 'C', 'VWX', '6c1e3fdc16f154632b1911225b046aa6');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7cfb550029', false, 'D', 'XVW', '6c1e3fdc16f154632b1911225b046aa6');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7d3cf6002a', false, 'A', 'PRADO', '0ac933a1168d8a3cca8871cfb958bc52');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7d5104002b', false, 'B', 'AIRE', '0ac933a1168d8a3cca8871cfb958bc52');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7d64d9002c', false, 'C', 'HIERRA', '0ac933a1168d8a3cca8871cfb958bc52');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7d75c7002d', true, 'D', 'TIERRA', '0ac933a1168d8a3cca8871cfb958bc52');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7dc37d002e', false, 'A', 'ODIEN', 'b0c9d7ab7a29f02940b953daa59bfded');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7ddacd002f', true, 'B', 'MENDIGO', 'b0c9d7ab7a29f02940b953daa59bfded');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7df5b30030', false, 'C', 'DIMERA', 'b0c9d7ab7a29f02940b953daa59bfded');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7e0dca0031', false, 'D', 'GOMIFERO', 'b0c9d7ab7a29f02940b953daa59bfded');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7e54be0032', false, 'A', 'ERE', 'f6841eb684054779bb0283875d0d235d');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7e6eb00033', false, 'B', 'AGE', 'f6841eb684054779bb0283875d0d235d');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7e85390034', false, 'C', 'LAC', 'f6841eb684054779bb0283875d0d235d');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7e9db60035', true, 'D', 'AIR', 'f6841eb684054779bb0283875d0d235d');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7f5be30036', false, 'A', '15 kilogramos', '2f279cd6c7bd7f7c8e1ac10f222085e2');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7f7df60037', false, 'B', '30 kilogramos', '2f279cd6c7bd7f7c8e1ac10f222085e2');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7f92440038', false, 'C', '45 kilogramos', '2f279cd6c7bd7f7c8e1ac10f222085e2');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf7fa9690039', true, 'D', '60 kilogramos', '2f279cd6c7bd7f7c8e1ac10f222085e2');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf800837003a', false, 'A', '28', 'cafbd01c3e1aee850c3af8f12626e296');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf802074003b', false, 'B', '64', 'cafbd01c3e1aee850c3af8f12626e296');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf803b1a003c', true, 'C', '37', 'cafbd01c3e1aee850c3af8f12626e296');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf804e87003d', false, 'D', '46', 'cafbd01c3e1aee850c3af8f12626e296');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf80a26a003e', false, 'A', 'INEES', 'e085fe546461a8ad612ca52ac4cccb93');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf80bb2b003f', false, 'B', 'INSEE', 'e085fe546461a8ad612ca52ac4cccb93');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf80d9840040', true, 'C', 'ENSIE', 'e085fe546461a8ad612ca52ac4cccb93');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf80edbe0041', false, 'D', 'USINE', 'e085fe546461a8ad612ca52ac4cccb93');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf813dfe0042', false, 'A', 'BALSA', '5aca1a96aeee26da7486180221cbd76a');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf815d6d0043', true, 'B', 'ACORAZADO', '5aca1a96aeee26da7486180221cbd76a');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf816f190044', false, 'C', 'VELERO', '5aca1a96aeee26da7486180221cbd76a');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf8183b80045', false, 'D', 'BUQUE DE CARGA', '5aca1a96aeee26da7486180221cbd76a');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf81c8c40046', false, 'A', 'presumir', 'fd22a9a7e293fd822cf19305458aa15a');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf81e3830047', false, 'B', 'usurpar', 'fd22a9a7e293fd822cf19305458aa15a');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf81f3800048', false, 'C', 'sumar', 'fd22a9a7e293fd822cf19305458aa15a');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf820b5d0049', true, 'D', 'usurero', 'fd22a9a7e293fd822cf19305458aa15a');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf824e0e004a', false, 'A', '6', '043e62a9167a1f64baa202183ecca397');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf82644d004b', true, 'B', '8', '043e62a9167a1f64baa202183ecca397');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf827a36004c', false, 'C', '3', '043e62a9167a1f64baa202183ecca397');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf82899f004d', false, 'D', '2', '043e62a9167a1f64baa202183ecca397');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf82d3f5004e', true, 'A', 'POK', '93153e1c0bca797986e8e317c812dd69');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf82ec55004f', false, 'B', 'ABT', '93153e1c0bca797986e8e317c812dd69');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf82fbda0050', false, 'C', 'CQJ', '93153e1c0bca797986e8e317c812dd69');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf830e280051', false, 'D', 'OQP', '93153e1c0bca797986e8e317c812dd69');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf8375050053', false, 'B', 'HEXÁGONO', '802379c3ab7cbd26bca2ac04168c5ffa');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf8387c10054', false, 'C', 'CÍRCULO', '802379c3ab7cbd26bca2ac04168c5ffa');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf839e720055', false, 'D', 'PARÁBOLA', '802379c3ab7cbd26bca2ac04168c5ffa');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf8354a30052', true, 'A', 'RECTA', '802379c3ab7cbd26bca2ac04168c5ffa');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf8444f10056', false, 'A', '11222', '9683b831ce1f3a9c728b604643160944');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf845abb0057', false, 'B', '22211', '9683b831ce1f3a9c728b604643160944');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf8482910058', false, 'C', '21222', '9683b831ce1f3a9c728b604643160944');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf849a3a0059', true, 'D', '22122', '9683b831ce1f3a9c728b604643160944');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf84dbc0005a', false, 'A', 'mímica', 'f76211e49e1203653992f2c8c325f5f6');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf8509b0005c', false, 'C', 'migaja', 'f76211e49e1203653992f2c8c325f5f6');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf84ec27005b', true, 'B', 'milagro', 'f76211e49e1203653992f2c8c325f5f6');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf85426c005d', false, 'D', 'migración', 'f76211e49e1203653992f2c8c325f5f6');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf8584dc005e', false, 'A', '12', '4028809b9ecf55b4019ecf66320c0000');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf85a101005f', false, 'B', '2', '4028809b9ecf55b4019ecf66320c0000');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf85b6510060', false, 'C', '36', '4028809b9ecf55b4019ecf66320c0000');
INSERT INTO public.opcionrespuesta (id, escorrecta, letra, texto, pregunta_id) VALUES ('4028809b9ecf55b4019ecf85cd5f0061', true, 'D', '6', '4028809b9ecf55b4019ecf66320c0000');


-- Completed on 2026-06-16 02:39:06

--
-- PostgreSQL database dump complete
--

\unrestrict zXVjPh6JYHnB8JY1ejneCcZZgNT7NOQBFK7CTzjLAKNdjHEQBWpmTeLxSabCEVo

