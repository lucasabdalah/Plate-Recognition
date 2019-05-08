function Letra = EstimadorLetra(Amostra)
  
% Essa função irá realizar as estimações das imagens de letras inseridas.
  
    load Dados;
    %Carregando a matriz de dados para o ambiente de trabalho.

    Amostra = imresize(Amostra,[42 24]); 
    % Padronizando o tamanho da imagem recebida pela função.
    
    VetorCorrelacao = zeros(1,length(Dados));
  
  for i = 1:(length(Dados)/24)
    
    a = 24*(i-1) + 1;
    
    VetorCorrelacao(1,i) = corr2(Dados(:,a:(24*i)),Amostra);
  
  endfor
  % Fluxo que coleta uma matriz de correlação.
  
  ind=find(VetorCorrelacao==max(VetorCorrelacao));
  disp(find(VetorCorrelacao==max(VetorCorrelacao)));
  
  % Alphabets listings.
  if ind==1 || ind==2
     Letra = 'A';
  elseif ind==3 || ind==4
     Letra = 'B';
  elseif ind==5
     Letra = 'C'
  elseif ind==6 || ind==7
     Letra = 'D';
  elseif ind==8
     Letra = 'E';
  elseif ind==9
     Letra = 'F';
  elseif ind==10
     Letra = 'G';
  elseif ind==11
     Letra = 'H';
  elseif ind==12
     Letra = 'I';
  elseif ind==13
     Letra = 'J';
  elseif ind==14
     Letra = 'K';
  elseif ind==15
     Letra = 'L';
  elseif ind==16
     Letra = 'M';
  elseif ind==17
     Letra = 'N';
  elseif ind==18 || ind==19
     Letra = 'O';
  elseif ind==20 || ind==21
     Letra = 'P';
  elseif ind==22 || ind==23
     Letra = 'Q';
  elseif ind==24 || ind==25
     Letra = 'R';
  elseif ind==26
     Letra = 'S';
  elseif ind==27
     Letra = 'T';
  elseif ind==28
     Letra = 'U';
  elseif ind==29
     Letra = 'V';
  elseif ind==30
     Letra = 'W';
  elseif ind==31
     Letra = 'X';
  elseif ind==32
     Letra = 'Y';
  elseif ind==33
     Letra = 'Z';

  % Numerals listings.
  elseif ind==34
     Letra = '1';
  elseif ind==35
     Letra = '2';
  elseif ind==36
     Letra = '3';
  elseif ind==37 || ind==38
     Letra = '4';
  elseif ind==39
     Letra = '5';
  elseif ind==40 || ind==41 || ind==42
     Letra = '6';
  elseif ind==43
     Letra = '7';
  elseif ind==44 || ind==45
     Letra= '8';
  elseif ind==46 || ind==47 || ind==48
     Letra = '9';
  else
     Letra = '0';
  
  endif

endfunction
