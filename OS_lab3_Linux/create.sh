#!/bin/bash


mkdir -p Library/Articles

# Создаем подкаталоги для каждой статьи типа автор, научное направление, год написания, научный журнал)))
for ((i=1; i<=5; i++)); do
    article_dir="Library/Articles/article_$i"
    mkdir -p "$article_dir"
    
    echo "Author $i" > "$article_dir/author.txt"
    echo "Scientific field $i" > "$article_dir/field.txt"
    echo "Year $i" > "$article_dir/year.txt"
    echo "Journal $i" > "$article_dir/journal.txt"
    
    mkdir -p "Library/Authors/Author_$i"
    mkdir -p "Library/Fields/Field_$i"
    mkdir -p "Library/Years/Year_$i"
    mkdir -p "Library/Journals/Journal_$i"
    
    # создание ссылок
    ln -s "$(pwd)/Library/Articles/article_$i" "Library/Authors/Author_$i/article_$i"
    ln -s "$(pwd)/Library/Articles/article_$i" "Library/Fields/Field_$i/article_$i"
    ln -s "$(pwd)/Library/Articles/article_$i" "Library/Years/Year_$i/article_$i"
    ln -s "$(pwd)/Library/Articles/article_$i" "Library/Journals/Journal_$i/article_$i"
done

article_dir="Library/Articles/article_6"
    mkdir -p "$article_dir"
    
    echo "Author 5" > "$article_dir/author.txt"
    echo "Scientific field 5" > "$article_dir/field.txt"
    echo "Year 5" > "$article_dir/year.txt"
    echo "Journal 5" > "$article_dir/journal.txt"
    
    # создание ссылок
    ln -s "$(pwd)/Library/Articles/article_6" "Library/Authors/Author_5/article_6"
    ln -s "$(pwd)/Library/Articles/article_6" "Library/Fields/Field_5/article_6"
    ln -s "$(pwd)/Library/Articles/article_6" "Library/Years/Year_5/article_6"
    ln -s "$(pwd)/Library/Articles/article_6" "Library/Journals/Journal_5/article_6"
