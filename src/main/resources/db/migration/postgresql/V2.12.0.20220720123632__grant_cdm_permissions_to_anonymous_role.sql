ALTER TABLE ${ohdsiSchema}.sec_role ADD show_on_ui bool NOT NULL DEFAULT true;

INSERT INTO ${ohdsiSchema}.sec_role (id, name, system_role, ui_visible)
SELECT 101, 'cdm viewer', true, false;

INSERT INTO ${ohdsiSchema}.sec_permission (id, value, description)
SELECT nextval('${ohdsiSchema}.sec_permission_id_seq'), 'cdmresults:*:*:get', 'Get Achilles reports on every source';

INSERT INTO ${ohdsiSchema}.sec_permission (id, value, description)
SELECT nextval('${ohdsiSchema}.sec_permission_id_seq'), 'cdmresults:*:*:*:get', 'Get Achilles reports details on every source';

INSERT INTO ${ohdsiSchema}.sec_role_permission (id, role_id, permission_id)
SELECT nextval('${ohdsiSchema}.sec_role_permission_sequence'), sr.id, sp.id
FROM ${ohdsiSchema}.sec_permission sp, ${ohdsiSchema}.sec_role sr
WHERE sp.value in ('cdmresults:*:get',
                   'cdmresults:*:*:get',
                   'cdmresults:*:*:*:get')
  and sr.id = 101;