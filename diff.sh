# compare two images, then create a stitched output of the originals and the diff side-by-side
#
# doesn't work for images that differ in size

for file in flags/v3.0.x/*
do
  filename=$(basename "$file")
  compare flags/v3.0.x/$filename flags/svg-strict-parsing/$filename flags/diff/$filename
  compare -compose src flags/v3.0.x/$filename flags/svg-strict-parsing/$filename flags/diff/$filename
  convert flags/v3.0.x/$filename flags/svg-strict-parsing/$filename flags/diff/$filename +append flags/stitch/$filename
done
