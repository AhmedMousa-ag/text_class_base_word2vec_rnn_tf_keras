

export embed_dim=300

wget http://nlp.stanford.edu/data/glove.6B.zip /temp/

unzip -q /temp/glove.6B.zip

cp /temp/glove.6B."$embed_dim"d.txt /opt/app/model/artifacts/trained_embed/
