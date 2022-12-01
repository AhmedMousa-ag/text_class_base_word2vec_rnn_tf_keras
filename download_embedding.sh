

export embed_dim=100 #Must be declared. #available dims are 100, 300 and 500 
export embed_file_name=enwiki_20180420_"$embed_dim"d.txt

# For refrencess please visit https://wikipedia2vec.github.io/wikipedia2vec/pretrained/

wget http://wikipedia2vec.s3.amazonaws.com/models/en/2018-04-20/"$embed_file_name".bz2 /temp/

unzip -q /temp/"$embed_file_name".bz2

cp /temp/"$embed_file_name" /opt/app/model/artifacts/trained_embed/


echo "export embed_dim=$embed_dim" > ~/.profile
echo "export embed_file_name=$embed_file_name" > ~/.profile
