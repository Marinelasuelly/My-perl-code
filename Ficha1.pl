use strict;
use warnings;

# 1. Verificar se a string contém "ensolarado"
my $frase1 = "Hoje está ensolarado";
if ($frase1 =~ /ensolarado/) {
    print "Contém 'ensolarado'\n";
} else {
    print "Não contém\n";
}

# 2. Verificar se "Perl" está presente (case insensitive)
my $frase2 = "Eu gosto de aprender PERL todos os dias";
if ($frase2 =~ /perl/i) {
    print "A palavra 'Perl' está presente\n";
} else {
    print "Não está presente\n";
}

# 3. Extrair número da string
my $frase3 = "O preço é 45.90 €";
if ($frase3 =~ /(\d+\.\d+)/) {
    print "Número encontrado: $1\n"; #so funciona dentro do if e é como variavel local que armazena o valor recolhido
}

# 4. Verificar se começa com "Olá"
my $frase4 = "123";
if ($frase4 =~ /([^1])/) {
    print "A frase começa com: $1\n";
} else {
    print "Não começa com 'Olá'\n";
}

# 5. Substituir "gato" por "cachorro"
my $frase5 = "O gato dorme dentro da casinha.";
$frase5 =~ s/gato/cachorro/;
print "$frase5\n";

# 6. Transformar "Alves, Marcelo" em "Marcelo Alves"
my $nome = "Alves, Marcelo";
if ($nome =~ /(\w+),\s*(\w+)/) {
    my $nome_formatado = "$2 $1";
    print "$nome_formatado\n";
}

# 7. Converter data dd/mm/aaaa para aaaa-mm-dd
my $data = "15/05/2025";
$data =~ s/(\d{2})\/(\d{2})\/(\d{4})/$1-$3-$2/;
print "$data\n";