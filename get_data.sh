echo "Downloading example data..."
wget -P data http://cseweb.ucsd.edu/~viscomp/projects/LF/papers/ECCV20/nerf/nerf_example_data.zip

echo "Unzipping data..."
unzip -q data/nerf_example_data.zip -d data

echo "Generate multi scale images..."
mkdir data/multi_scale
python datasets/convert_blender_data.py --blender_dir data/nerf_synthetic/ --out_dir data/multi_scale --object_name lego