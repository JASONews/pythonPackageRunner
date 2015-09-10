#excute given file
#param: @filename the file that will be execute.
#no return value
execfile() {

  currentdir="$(pwd)"
  pkg=""
  currentpkg=""

  subdir=$(echo "$1" | cut -f 1 -d'.')
  subdir=$(echo $subdir | sed -e "s/\//./g")

  while [ -e __init__.py ]; do
    currentpkg=`basename -a "$(pwd)"`
    pkg="$currentpkg.$pkg"
    cd ..
  done

  python -m "$pkg$subdir" && cd "$currentdir"
}
#save current directory
cdir="$(pwd)"
#get execute file name
fn="$(basename -a "$1")"
#get directory by cutting off trailing filename
dir="$(echo "$1" | sed -e "s/$fn//g")"
#go to destination directory 
cd "$dir"
#run the file
execfile "$fn"
#go back working directory
cd "$cdir"
