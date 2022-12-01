

export embed_dim=100 #Must be declared. 
export embed_file_name=enwiki_20180420_"$embed_dim"d.txt

wget http://wikipedia2vec.s3.amazonaws.com/models/en/2018-04-20/enwiki_20180420_"$embed_file_name".bz2 /temp/

unzip -q /temp/"$embed_file_name".bz2

cp /temp/"$embed_file_name" /opt/app/model/artifacts/trained_embed/


echo "export embed_dim=$embed_dim" > ~/.profile
echo "export embed_file_name=$embed_file_name" > ~/.profile
