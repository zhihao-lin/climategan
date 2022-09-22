# usage: bash infer.sh [input_img_dir] [out_img_dir]
python apply_events.py -b 4 --half -i $1 -r config/model/masker --output_path $2 --keep_size

mkdir $2/flood
mkdir $2/smog
mkdir $2/wildfire
mkdir $2/mask

mv $2/*_flood_* $2/flood
mv $2/*_smog_* $2/smog
mv $2/*_wildfire_* $2/wildfire
mv $2/*_mask_* $2/mask