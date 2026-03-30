-- ============================================================
-- INU Fake Studenten – v2 (angepasst an echtes DB-Schema)
-- Ausführen im: Supabase Dashboard → SQL Editor
-- ============================================================
-- Erstellt 40 Fake-Studenten (10 pro Fakultät):
--   IBW  → Internationale Betriebswirtschaftslehre
--   PSY  → Psychologie
--   SMM  → Social Media Management
--   WPSY → Wirtschaftspsychologie
--
-- INU org_id: 8a304490-5acf-44d0-bb1c-8496744d4e05
-- ============================================================

DO $$
DECLARE
  org_id UUID := '8a304490-5acf-44d0-bb1c-8496744d4e05';

  -- Studiengang-IDs (aus studiengaenge Tabelle)
  -- IBW Studiengänge
  sg_ibw_b  TEXT := 'Internationale Betriebswirtschaftslehre';
  sg_ibw_m  TEXT := 'International Business Management';
  sg_ibw_fa TEXT := 'Finance & Accounting';
  -- PSY Studiengänge
  sg_psy_b  TEXT := 'Psychologie';
  sg_psy_m  TEXT := 'Klinische Psychologie';
  sg_psy_g  TEXT := 'Gesundheitspsychologie';
  -- SMM Studiengänge
  sg_smm_b  TEXT := 'Social Media Management';
  sg_smm_m  TEXT := 'Digital Marketing & Content Creation';
  -- WPSY Studiengänge
  sg_wpsy_b TEXT := 'Wirtschaftspsychologie';
  sg_wpsy_m TEXT := 'Organisationspsychologie & Leadership';

  new_id UUID;
BEGIN

-- ════════════════════════════════════════════════════════
-- FAKULTÄT: IBW (10 Studenten)
-- ════════════════════════════════════════════════════════

-- Student 1
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'lena.hoffmann@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'lena.hoffmann@stud.inu.de', 'Lena', 'Hoffmann', '2002-03-15', 'w', 'student', org_id, sg_ibw_b, 'München', 'Deutschland', '2022-10-01', '5', 'bachelor', true);

-- Student 2
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'max.bauer@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'max.bauer@stud.inu.de', 'Max', 'Bauer', '2001-07-22', 'm', 'student', org_id, sg_ibw_b, 'München', 'Deutschland', '2022-10-01', '5', 'bachelor', true);

-- Student 3
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'sarah.mueller@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'sarah.mueller@stud.inu.de', 'Sarah', 'Müller', '2003-01-10', 'w', 'student', org_id, sg_ibw_fa, 'München', 'Deutschland', '2023-10-01', '3', 'bachelor', true);

-- Student 4
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'jan.schmidt@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'jan.schmidt@stud.inu.de', 'Jan', 'Schmidt', '2000-11-05', 'm', 'student', org_id, sg_ibw_m, 'München', 'Deutschland', '2023-10-01', '3', 'master', true);

-- Student 5
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'anna.lehmann@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'anna.lehmann@stud.inu.de', 'Anna', 'Lehmann', '2002-06-30', 'w', 'student', org_id, sg_ibw_b, 'München', 'Deutschland', '2022-10-01', '5', 'bachelor', true);

-- Student 6
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'felix.wagner@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'felix.wagner@stud.inu.de', 'Felix', 'Wagner', '2001-09-18', 'm', 'student', org_id, sg_ibw_fa, 'München', 'Deutschland', '2021-10-01', '7', 'bachelor', true);

-- Student 7
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'mia.fischer@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'mia.fischer@stud.inu.de', 'Mia', 'Fischer', '2003-04-12', 'w', 'student', org_id, sg_ibw_b, 'München', 'Deutschland', '2023-10-01', '3', 'bachelor', true);

-- Student 8
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'noah.weber@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'noah.weber@stud.inu.de', 'Noah', 'Weber', '2001-12-08', 'm', 'student', org_id, sg_ibw_m, 'München', 'Deutschland', '2024-10-01', '1', 'master', true);

-- Student 9
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'lara.meyer@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'lara.meyer@stud.inu.de', 'Lara', 'Meyer', '2002-08-25', 'w', 'student', org_id, sg_ibw_fa, 'München', 'Deutschland', '2022-10-01', '5', 'bachelor', true);

-- Student 10
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'tim.richter@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'tim.richter@stud.inu.de', 'Tim', 'Richter', '2000-02-14', 'm', 'student', org_id, sg_ibw_b, 'München', 'Deutschland', '2021-10-01', '7', 'bachelor', true);

-- ════════════════════════════════════════════════════════
-- FAKULTÄT: PSY (10 Studenten)
-- ════════════════════════════════════════════════════════

-- Student 11
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'julia.brandt@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'julia.brandt@stud.inu.de', 'Julia', 'Brandt', '2002-05-20', 'w', 'student', org_id, sg_psy_b, 'München', 'Deutschland', '2022-10-01', '5', 'bachelor', true);

-- Student 12
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'lukas.hartmann@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'lukas.hartmann@stud.inu.de', 'Lukas', 'Hartmann', '2001-10-03', 'm', 'student', org_id, sg_psy_b, 'München', 'Deutschland', '2022-10-01', '5', 'bachelor', true);

-- Student 13
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'marie.schulz@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'marie.schulz@stud.inu.de', 'Marie', 'Schulz', '2003-02-28', 'w', 'student', org_id, sg_psy_g, 'München', 'Deutschland', '2023-10-01', '3', 'bachelor', true);

-- Student 14
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'david.koenig@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'david.koenig@stud.inu.de', 'David', 'König', '2000-07-17', 'm', 'student', org_id, sg_psy_m, 'München', 'Deutschland', '2023-10-01', '3', 'master', true);

-- Student 15
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'sophie.wolf@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'sophie.wolf@stud.inu.de', 'Sophie', 'Wolf', '2002-11-09', 'w', 'student', org_id, sg_psy_b, 'München', 'Deutschland', '2022-10-01', '5', 'bachelor', true);

-- Student 16
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'paul.zimmermann@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'paul.zimmermann@stud.inu.de', 'Paul', 'Zimmermann', '2001-04-26', 'm', 'student', org_id, sg_psy_g, 'München', 'Deutschland', '2023-10-01', '3', 'bachelor', true);

-- Student 17
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'lisa.neumann@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'lisa.neumann@stud.inu.de', 'Lisa', 'Neumann', '2003-08-14', 'w', 'student', org_id, sg_psy_b, 'München', 'Deutschland', '2023-10-01', '3', 'bachelor', true);

-- Student 18
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'tobias.peters@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'tobias.peters@stud.inu.de', 'Tobias', 'Peters', '2001-01-31', 'm', 'student', org_id, sg_psy_m, 'München', 'Deutschland', '2024-10-01', '1', 'master', true);

-- Student 19
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'emma.frank@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'emma.frank@stud.inu.de', 'Emma', 'Frank', '2002-09-07', 'w', 'student', org_id, sg_psy_g, 'München', 'Deutschland', '2022-10-01', '5', 'bachelor', true);

-- Student 20
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'leon.krause@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'leon.krause@stud.inu.de', 'Leon', 'Krause', '2001-06-22', 'm', 'student', org_id, sg_psy_b, 'München', 'Deutschland', '2022-10-01', '5', 'bachelor', true);

-- ════════════════════════════════════════════════════════
-- FAKULTÄT: SMM (10 Studenten)
-- ════════════════════════════════════════════════════════

-- Student 21
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'nina.schwarz@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'nina.schwarz@stud.inu.de', 'Nina', 'Schwarz', '2003-03-16', 'w', 'student', org_id, sg_smm_b, 'München', 'Deutschland', '2023-10-01', '3', 'bachelor', true);

-- Student 22
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'ben.lorenz@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'ben.lorenz@stud.inu.de', 'Ben', 'Lorenz', '2002-12-01', 'm', 'student', org_id, sg_smm_b, 'München', 'Deutschland', '2022-10-01', '5', 'bachelor', true);

-- Student 23
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'hanna.becker@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'hanna.becker@stud.inu.de', 'Hanna', 'Becker', '2001-07-10', 'w', 'student', org_id, sg_smm_m, 'München', 'Deutschland', '2023-10-01', '3', 'master', true);

-- Student 24
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'kai.hoffmann@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'kai.hoffmann@stud.inu.de', 'Kai', 'Hoffmann', '2003-05-28', 'm', 'student', org_id, sg_smm_b, 'München', 'Deutschland', '2023-10-01', '3', 'bachelor', true);

-- Student 25
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'lea.vogel@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'lea.vogel@stud.inu.de', 'Lea', 'Vogel', '2002-10-14', 'w', 'student', org_id, sg_smm_b, 'München', 'Deutschland', '2022-10-01', '5', 'bachelor', true);

-- Student 26
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'erik.schaefer@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'erik.schaefer@stud.inu.de', 'Erik', 'Schäfer', '2001-03-03', 'm', 'student', org_id, sg_smm_m, 'München', 'Deutschland', '2024-10-01', '1', 'master', true);

-- Student 27
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'amelie.jung@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'amelie.jung@stud.inu.de', 'Amelie', 'Jung', '2003-01-19', 'w', 'student', org_id, sg_smm_b, 'München', 'Deutschland', '2023-10-01', '3', 'bachelor', true);

-- Student 28
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'moritz.engel@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'moritz.engel@stud.inu.de', 'Moritz', 'Engel', '2002-08-07', 'm', 'student', org_id, sg_smm_b, 'München', 'Deutschland', '2022-10-01', '5', 'bachelor', true);

-- Student 29
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'zoe.braun@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'zoe.braun@stud.inu.de', 'Zoe', 'Braun', '2001-11-25', 'w', 'student', org_id, sg_smm_m, 'München', 'Deutschland', '2023-10-01', '3', 'master', true);

-- Student 30
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'nico.huber@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'nico.huber@stud.inu.de', 'Nico', 'Huber', '2003-06-11', 'm', 'student', org_id, sg_smm_b, 'München', 'Deutschland', '2023-10-01', '3', 'bachelor', true);

-- ════════════════════════════════════════════════════════
-- FAKULTÄT: WPSY (10 Studenten)
-- ════════════════════════════════════════════════════════

-- Student 31
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'clara.klein@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'clara.klein@stud.inu.de', 'Clara', 'Klein', '2002-04-22', 'w', 'student', org_id, sg_wpsy_b, 'München', 'Deutschland', '2022-10-01', '5', 'bachelor', true);

-- Student 32
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'finn.dietrich@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'finn.dietrich@stud.inu.de', 'Finn', 'Dietrich', '2001-09-08', 'm', 'student', org_id, sg_wpsy_b, 'München', 'Deutschland', '2022-10-01', '5', 'bachelor', true);

-- Student 33
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'ida.hofer@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'ida.hofer@stud.inu.de', 'Ida', 'Hofer', '2003-01-04', 'w', 'student', org_id, sg_wpsy_m, 'München', 'Deutschland', '2023-10-01', '3', 'master', true);

-- Student 34
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'ben.kramer@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'ben.kramer@stud.inu.de', 'Ben', 'Kramer', '2000-06-16', 'm', 'student', org_id, sg_wpsy_b, 'München', 'Deutschland', '2021-10-01', '7', 'bachelor', true);

-- Student 35
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'pia.roth@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'pia.roth@stud.inu.de', 'Pia', 'Roth', '2002-12-29', 'w', 'student', org_id, sg_wpsy_b, 'München', 'Deutschland', '2022-10-01', '5', 'bachelor', true);

-- Student 36
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'tom.kuhn@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'tom.kuhn@stud.inu.de', 'Tom', 'Kuhn', '2001-04-13', 'm', 'student', org_id, sg_wpsy_m, 'München', 'Deutschland', '2024-10-01', '1', 'master', true);

-- Student 37
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'victoria.sommer@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'victoria.sommer@stud.inu.de', 'Victoria', 'Sommer', '2003-07-30', 'w', 'student', org_id, sg_wpsy_b, 'München', 'Deutschland', '2023-10-01', '3', 'bachelor', true);

-- Student 38
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'simon.herrmann@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'simon.herrmann@stud.inu.de', 'Simon', 'Herrmann', '2002-02-17', 'm', 'student', org_id, sg_wpsy_b, 'München', 'Deutschland', '2022-10-01', '5', 'bachelor', true);

-- Student 39
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'elena.gross@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'elena.gross@stud.inu.de', 'Elena', 'Groß', '2001-10-21', 'w', 'student', org_id, sg_wpsy_m, 'München', 'Deutschland', '2023-10-01', '3', 'master', true);

-- Student 40
new_id := gen_random_uuid();
INSERT INTO auth.users (id, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at, role, aud)
VALUES (new_id, 'alex.berger@stud.inu.de', crypt('Passwort123!', gen_salt('bf')), NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW(), 'authenticated', 'authenticated');
INSERT INTO profiles (id, email, vorname, nachname, geburtsdatum, geschlecht, rolle, organization_id, studiengang, studienort, land, studienbeginn, semester, abschluss, onboarding_done)
VALUES (new_id, 'alex.berger@stud.inu.de', 'Alex', 'Berger', '2003-04-05', 'm', 'student', org_id, sg_wpsy_b, 'München', 'Deutschland', '2023-10-01', '3', 'bachelor', true);

RAISE NOTICE '✅ 40 Fake-Studenten erfolgreich erstellt!';
END $$;
