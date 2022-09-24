import yaml
import bcrypt

def parse_yaml() -> dict:
    with open(r'config.yaml') as file:
        config = yaml.safe_load(file)

    return config['database']

def hash_password(unhashed_password: str) -> str:
    encoded_password = bytes(unhashed_password, 'UTF-8')
    salt = bcrypt.gensalt()
    hashed_password = bcrypt.hashpw(encoded_password, salt)
    return hashed_password


def create_account_queries(config: dict):
    if not config.get("gms"):
        return
    table = """
    INSERT INTO `accounts` (
    `id`, `name`, `email`, `premium_points`, `backup_points`, `guild_points`,
     `guild_points_stats`, `password`, `premdays`, `lastday`, `key`,
     `blocked`, `warnings`, `group_id`, `vip_time`, `email_new`, `email_new_time`,
     `email_code`, `next_email`, `created`, `page_lastday`, `page_access`, `rlname`,
     `location`, `flag`, `last_post`, `create_date`, `create_ip`, `vote`
    ) VALUES
    """
    accounts = []
    for gm in config["gms"]:
        account = f"""
    (2, '123123', {gm["email"]}, 0, 0, 0,
    0, {hash_password(gm["password"])}, 365, 1470516618, '',
    0, 0, 4, 0, '', 0,
    '', 0, 0, 0, 0, '',
    '', 'br', 0, 1470516618, 2147483647, 0)
    """
        accounts.append(account)
    to_insert = f"{table} {','.join(accounts)};"

    return to_insert




config = parse_yaml()
print(create_account_queries(config))