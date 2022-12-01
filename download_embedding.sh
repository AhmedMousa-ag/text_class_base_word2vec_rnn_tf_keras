

export embed_dim=100 #Must be declared as it will be used for training. #available dims are 100, 300 and 500 
export embed_file_name=enwiki_20180420_"$embed_dim"d.txt #Must be decleared as it will be used during training

# For refrencess please visit https://wikipedia2vec.github.io/wikipedia2vec/pretrained/

wget -P /tmp http://wikipedia2vec.s3.amazonaws.com/models/en/2018-04-20/"$embed_file_name".bz2

bzip2 -d -q /tmp/"$embed_file_name".bz2

mkdir -p /opt/app/model/artifacts/trained_embed/

cp /tmp/"$embed_file_name" /opt/app/model/artifacts/trained_embed/


echo "export embed_dim=${embed_dim}" >> /root/.bashrc #To keep env variable on the system after restarting
echo "export embed_file_name=${embed_file_name}" >> /root/.bashrc #To keep env variable on the system after restarting
