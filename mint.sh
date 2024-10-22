base64 -i ./Electro_001.jpg > image_base64.txt
BASE64_CONTENT=$(cat image_base64.txt)

dfx canister call icrc7 icrc7_mint "(record{to= record {owner = principal \"ripjo-binnx-2gwst-bqo32-kxtpx-z4z54-62yzw-yitre-mv5ru-kclg6-hqe\"; subaccount = opt blob\"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\"; };  token_id=2; memo= null; from_subaccount= null; token_description = opt \"Test 2\"; token_logo = opt \"data:image/jpg;base64,$BASE64_CONTENT\";token_name= null})"

# cat image_base64.txt