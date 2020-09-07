echo PATH = $PATH
echo vessel @ `which vessel`

echo
echo == Build.
echo

dfx start --background
dfx canister create --all
dfx build

echo
echo == Install test service.
echo

dfx canister install Test

echo
echo == Run test service.
echo

dfx canister call Test selfTest

LOOP="(true)";
while [ "$LOOP" == "(true)" ]; do
    LOOP=$(dfx canister call Test doNextCall)
done
