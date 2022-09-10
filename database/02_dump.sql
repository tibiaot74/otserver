USE ot;

INSERT INTO `accounts` (
    `id`, `name`, `email`, `premium_points`, `backup_points`, `guild_points`,
     `guild_points_stats`, `password`, `premdays`, `lastday`, `key`,
     `blocked`, `warnings`, `group_id`, `vip_time`, `email_new`, `email_new_time`,
     `email_code`, `next_email`, `created`, `page_lastday`, `page_access`, `rlname`,
     `location`, `flag`, `last_post`, `create_date`, `create_ip`, `vote`
) VALUES
(2, '123123', "admin_fake_email", 0, 0, 0,
 0, '$2a$12$lTJvfWuPMpJnp4losLttjunVAs.062xo5.LvH8QxHRGeP4rwkeS16', 3, 1470516618, '',
 0, 0, 2, 0, '', 0,
 '', 0, 0, 0, 0, '',
 '', 'br', 0, 1470516618, 2147483647, 0);


INSERT INTO `players` (
    `id`, `name`, `world_id`, `group_id`, `account_id`, `level`,
    `vocation`, `health`, `healthmax`, `experience`, `lookbody`, `lookfeet`,
    `lookhead`, `looklegs`, `looktype`, `lookaddons`, `lookmount`, `maglevel`,
    `mana`, `manamax`, `manaspent`, `soul`, `town_id`, `posx`,
    `posy`, `posz`, `conditions`, `cap`, `sex`, `lastlogin`,
    `lastip`, `save`, `skull`, `skulltime`, `rank_id`, `guildnick`,
    `lastlogout`, `blessings`, `pvp_blessing`, `balance`, `stamina`, `direction`,
    `loss_experience`, `loss_mana`, `loss_skills`, `loss_containers`, `loss_items`, `premend`,
     `online`, `marriage`, `marrystatus`, `promotion`, `deleted`, `description`,
     `exphist_lastexp`, `exphist1`, `exphist2`, `exphist3`, `exphist4`, `exphist5`,
     `exphist6`, `exphist7`, `onlinetimetoday`, `onlinetime1`, `onlinetime2`, `onlinetime3`,
     `onlinetime4`, `onlinetime5`, `onlinetime6`, `onlinetime7`, `onlinetimeall`, `auction_balance`,
     `created`, `nick_verify`, `old_name`, `hide_char`, `comment`, `show_outfit`,
     `show_eq`, `show_bars`, `show_skills`, `show_quests`, `stars`, `create_ip`,
     `create_date`, `signature`, `cast`, `castViewers`, `castDescription`, `offlinetraining_time`,
     `offlinetraining_skill`, `broadcasting`, `viewers`, `ip`
) VALUES
(3, 'Account Manager', 10, 1, 1, 8, 0, 185, 185, 4200, 0, 0, 0, 0, 110, 0, 0, 0, 35, 35, 0, 100, 0, 853, 921, 7, '', 400, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 201660000, 0, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '', 43200, -1, 0, 0, '0'),
(4, 'Rook Sample', 0, 1, 1, 1, 0, 150, 150, 0, 0, 0, 0, 0, 128, 0, 0, 0, 0, 0, 0, 100, 0, 853, 921, 7, '', 400, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 201660000, 0, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '', 43200, -1, 0, 0, '0'),
(5, 'Sorcerer Sample', 0, 1, 1, 8, 1, 185, 185, 4200, 0, 0, 0, 0, 128, 0, 0, 0, 35, 35, 0, 100, 0, 143, 61, 8, '', 400, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 201660000, 0, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '', 43200, -1, 0, 0, '0'),
(6, 'Druid Sample', 0, 1, 1, 8, 2, 185, 185, 4200, 0, 0, 0, 0, 128, 0, 0, 0, 35, 35, 0, 100, 0, 143, 61, 8, '', 400, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 201660000, 0, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '', 43200, -1, 0, 0, '0'),
(7, 'Paladin Sample', 0, 1, 1, 8, 3, 185, 185, 4200, 0, 0, 0, 0, 128, 0, 0, 0, 35, 35, 0, 100, 0, 143, 168, 1, '', 400, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 201660000, 0, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '', 43200, -1, 0, 0, '0'),
(8, 'Knight Sample', 0, 1, 1, 8, 4, 185, 185, 4200, 0, 0, 0, 0, 128, 0, 0, 0, 35, 35, 0, 100, 0, 143, 61, 8, '', 400, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 201660000, 0, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '', 43200, -1, 0, 0, '0'),
(9, 'GOD', 0, 2, 2, 1,
 0, 150, 150, 0, 0, 0,
 0, 0, 128, 0, 0, 0,
 0, 0, 0, 100, 12, 0,
 0, 0, '', 400, 1, 0,
 0, 1, 0, 0, 0, '',
 0, 0, 0, 0, 201660000, 0,
 100, 100, 100, 100, 100, 0,
 0, 0, 0, 0, 0, '',
 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0,
 0, '', '', 0, '', 0,
 0, 0, 0, 0, 0, 2147483647,
 1470516668, '', 0, 0, '', 43200,
 -1, 0, 0, '0');
