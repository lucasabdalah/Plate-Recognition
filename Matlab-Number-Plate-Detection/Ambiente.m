function Ambiente
  
% Essa função tem o objetivo de preparar as imagens que serão utilizadas no
% procedimento de detecção.

    %Alfabeto
    A = imread('Alfabeto/A.bmp');B = imread('Alfabeto/B.bmp');C = imread('Alfabeto/C.bmp');
    D = imread('Alfabeto/D.bmp');E = imread('Alfabeto/E.bmp');F = imread('Alfabeto/F.bmp');
    G = imread('Alfabeto/G.bmp');H = imread('Alfabeto/H.bmp');I = imread('Alfabeto/I.bmp');
    J = imread('Alfabeto/J.bmp');K = imread('Alfabeto/K.bmp');L = imread('Alfabeto/L.bmp');
    M = imread('Alfabeto/M.bmp');N = imread('Alfabeto/N.bmp');O = imread('Alfabeto/O.bmp');
    P = imread('Alfabeto/P.bmp');Q = imread('Alfabeto/Q.bmp');R = imread('Alfabeto/R.bmp');
    S = imread('Alfabeto/S.bmp');T = imread('Alfabeto/T.bmp');U = imread('Alfabeto/U.bmp');
    V = imread('Alfabeto/V.bmp');W = imread('Alfabeto/W.bmp');X = imread('Alfabeto/X.bmp');
    Y = imread('Alfabeto/Y.bmp');Z = imread('Alfabeto/Z.bmp');  
     
    %Números
    Um = imread('Alfabeto/1.bmp');Dois = imread('Alfabeto/2.bmp');
    Tres = imread('Alfabeto/3.bmp');Quatro = imread('Alfabeto/4.bmp');
    Cinco = imread('Alfabeto/5.bmp'); Seis = imread('Alfabeto/6.bmp');
    Sete = imread('Alfabeto/7.bmp');Oito = imread('Alfabeto/8.bmp');
    Nove = imread('Alfabeto/9.bmp'); Zero = imread('Alfabeto/0.bmp');
    
    % Matriz Alfabeto contendo as letras.
    Alfabeto = [A B C D E F G H I J K L M N O P Q R S T U V W X Y Z];
    
    % Matriz Numerica contendo os numerais.
    Numerais = [Um Dois Tres Quatro Cinco Seis Sete Oito Nove Zero];
    
    % Gerando a matriz com todos os dados até então commpilados.
    Dados = [Alfabeto Numerais];
    
    % Salvando os dados em um arquivo .mat.
    save('Dados.mat','Dados')
    
endfunction
