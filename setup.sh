if [[ -z $1 ]]; then
  echo "New folder must be provided"
  exit 1
fi

mkdir ../$1
cp -r . ../$1
rm -rf ../$1/.git