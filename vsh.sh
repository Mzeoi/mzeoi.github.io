export CROS_USER_ID_HASH="$(cryptohome --action=status | python3 -c 'import sys, json; print(json.load(sys.stdin)["mounts"][0]["owner"])')"

vsh --vm_name=arcvm --owner_id="${CROS_USER_ID_HASH}" --target_container=arcvm --user=root
