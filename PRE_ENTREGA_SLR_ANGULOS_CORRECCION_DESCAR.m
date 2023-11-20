clear all; close all;clc
load('DATOSVALE.mat')
Data=table2array(DATOSTOMA2)/1; %%TENER EN CUENTA TIEMPO [1]
% 1. Definir los puntos
cont=1;
%i=20
for i=100:5:426
    LASIS=[Data(i,2)   Data(i,4)   Data(i,3) ];  %%x,z,y
    RASIS=[Data(i,5)   Data(i,7)   Data(i,6) ];
    LPSI= [Data(i,8)   Data(i,10)  Data(i,9) ];
    RPSI= [Data(i,11)  Data(i,13)  Data(i,12)];
    SAC1=((LPSI(1)+RPSI(1))/2);
    SAC2=((LPSI(2)+RPSI(2))/2);
    SAC3=((LPSI(3)+RPSI(3))/2);
    SACRUM=[SAC1 SAC2 SAC3];
    LKNE= [Data(i,14)  Data(i,16)  Data(i,15)];
    LTHI= [Data(i,17)  Data(i,19)  Data(i,18)];
    LANK= [Data(i,20)  Data(i,22)  Data(i,21)];
    LTIB= [Data(i,23)  Data(i,25)  Data(i,24)];
    LTOE= [Data(i,26)  Data(i,28)  Data(i,27)];
    LHEE= [Data(i,29)  Data(i,31)  Data(i,30)];
    RKNE= [Data(i,32)  Data(i,34)  Data(i,33)];
    RTHI= [Data(i,35)  Data(i,37)  Data(i,36)];
    RANK= [Data(i,38)  Data(i,40)  Data(i,39)];
    RTIB= [Data(i,41)  Data(i,43)  Data(i,42)];
    RTOE= [Data(i,44)  Data(i,46)  Data(i,45)];
    RHEE= [Data(i,47)  Data(i,49)  Data(i,48)];

    % 2.Dibujar los puntos
    figure (1)
    clf
    plot3(RASIS(1),RASIS(2),RASIS(3),'*')
    plot3(LASIS(1),LASIS(2),LASIS(3),'*')
    plot3(RPSI(1),RPSI(2),RPSI(3),'*')
    plot3(LPSI(1),LPSI(2),LPSI(3),'*')
    plot3(SACRUM(1),SACRUM(2),SACRUM(3),'*')
    plot3(LKNE(1),LKNE(2),LKNE(3),'*')
    plot3(LTHI(1),LTHI(2),LTHI(3),'*')
    plot3(LANK(1),LANK(2),LANK(3),'*')
    plot3(LTIB(1),LTIB(2),LTIB(3),'*')
    plot3(LTOE(1),LTOE(2),LTOE(3),'*')
    plot3(LHEE(1),LHEE(2),LHEE(3),'*')
    plot3(RKNE(1),RKNE(2),RKNE(3),'*')
    plot3(RTHI(1),RTHI(2),RTHI(3),'*')
    plot3(RANK(1),RANK(2),RANK(3),'*')
    plot3(RTIB(1),RTIB(2),RTIB(3),'*')
    plot3(RTOE(1),RTOE(2),RTOE(3),'*')
    plot3(RHEE(1),RHEE(2),RHEE(3),'*')

    hold on
    xlabel('x');ylabel('y');zlabel('z')
    title(['Núm. ',num2str(i)])
    axis equal

    line([LASIS(1) RASIS(1)],[LASIS(2) RASIS(2)],[LASIS(3) RASIS(3)],'color','blue')
    line([LPSI(1) RPSI(1)],[LPSI(2) RPSI(2)],[LPSI(3) RPSI(3)],'color','blue')
    line([RPSI(1) RASIS(1)],[RPSI(2) RASIS(2)],[RPSI(3) RASIS(3)],'color','blue')
    line([LASIS(1) LPSI(1)],[LASIS(2) LPSI(2)],[LASIS(3) LPSI(3)],'color','blue')
    
    line([RTHI(1) RASIS(1)],[RTHI(2) RASIS(2)],[RTHI(3) RASIS(3)],'color','blue')
    line([RKNE(1) RTHI(1)],[RKNE(2) RTHI(2)],[RKNE(3) RTHI(3)],'color','blue')
    line([RKNE(1) RASIS(1)],[RKNE(2) RASIS(2)],[RKNE(3) RASIS(3)],'color','blue')
    line([LTHI(1) LASIS(1)],[LTHI(2) LASIS(2)],[LTHI(3) LASIS(3)],'color','blue')
    line([LKNE(1) LTHI(1)],[LKNE(2) LTHI(2)],[LKNE(3) LTHI(3)],'color','blue')
    line([LKNE(1) LASIS(1)],[LKNE(2) LASIS(2)],[LKNE(3) LASIS(3)],'color','blue')
    
    line([RKNE(1) RANK(1)],[RKNE(2) RANK(2)],[RKNE(3) RANK(3)],'color','blue')
    line([RKNE(1) RTIB(1)],[RKNE(2) RTIB(2)],[RKNE(3) RTIB(3)],'color','blue')
    line([RANK(1) RTIB(1)],[RANK(2) RTIB(2)],[RANK(3) RTIB(3)],'color','blue')
    line([LKNE(1) LANK(1)],[LKNE(2) LANK(2)],[LKNE(3) LANK(3)],'color','blue')
    line([LKNE(1) LTIB(1)],[LKNE(2) LTIB(2)],[LKNE(3) LTIB(3)],'color','blue')
    line([LANK(1) LTIB(1)],[LANK(2) LTIB(2)],[LANK(3) LTIB(3)],'color','blue') 
    
    line([RTOE(1) RANK(1)],[RTOE(2) RANK(2)],[RTOE(3) RANK(3)],'color','blue')
    line([RANK(1) RHEE(1)],[RANK(2) RHEE(2)],[RANK(3) RHEE(3)],'color','blue')
    line([RTOE(1) RHEE(1)],[RTOE(2) RHEE(2)],[RTOE(3) RHEE(3)],'color','blue')
    line([LTOE(1) LANK(1)],[LTOE(2) LANK(2)],[LTOE(3) LANK(3)],'color','blue')
    line([LANK(1) LHEE(1)],[LANK(2) LHEE(2)],[LANK(3) LHEE(3)],'color','blue')
    line([LTOE(1) LHEE(1)],[LTOE(2) LHEE(2)],[LTOE(3) LHEE(3)],'color','blue')
    
%% SISTEMA LOCAL DE REFERENCIA
    %SLR SACRUM
    Vy=RASIS-LASIS;
    Vaux=SACRUM-RASIS;
    Vz=cross(Vy,Vaux);
    Vx=cross(Vz,Vy);
    Vxn=Vx/norm(Vx);
    Vyn=Vy/norm(Vy);
    Vzn=Vz/norm(Vz);
    scale=0.1;
    EjesS=[Vyn;Vxn;Vzn];
    EjesS=EjesS*scale;
    origenL(1,:)=SACRUM;origenL(2,:)=SACRUM;origenL(3,:)=SACRUM;

     quiver3(origenL(:,1),origenL(:,2),origenL(:,3),EjesS(:,1),EjesS(:,2),EjesS(:,3)),...
               text(origenL(:,1)+EjesS(:,1),origenL(:,2)+EjesS(:,2),origenL(:,3)+EjesS(:,3),{'x','y','z'},'color','r');

    %%SLR muslo izquierdo
        Vz1=LASIS-LKNE;
        Vaux1=LTHI-LASIS;
        Vy1=cross(Vaux1,Vz1);
        Vx1=cross(Vy1,Vz1);
        Vxn1=Vx1/norm(Vx1);
        Vyn1=Vy1/norm(Vy1);
        Vzn1=Vz1/norm(Vz1);
        Ejes1L=[Vxn1;Vyn1;Vzn1];
        Ejes1L=Ejes1L*scale;
        PM1=((LASIS(1)+LKNE(1))/2);
        PM2=((LASIS(2)+LKNE(2))/2);
        PM3=((LASIS(3)+LKNE(3))/2);
        PM=[PM1 PM2 PM3];
        origen1L(1,:)=PM;origen1L(2,:)=PM;origen1L(3,:)=PM;

        quiver3(origen1L(:,1),origen1L(:,2),origen1L(:,3),Ejes1L(:,1),Ejes1L(:,2),Ejes1L(:,3)),...
                   text(origen1L(:,1)+Ejes1L(:,1),origen1L(:,2)+Ejes1L(:,2),origen1L(:,3)+Ejes1L(:,3),{'x','y','z'},'color','r');
    %%SLR PANTORILLA IZQUIERDA
        Vzp=LKNE-LANK;
        Vauxp=LTIB-LKNE;
        Vyp=cross(Vauxp,Vzp);
        Vxp=cross(Vyp,Vzp);
        Vxnp=Vxp/norm(Vxp);
        Vznp=Vzp/norm(Vzp);
        Vynp=Vyp/norm(Vyp);
        EjespL=[Vxnp;Vynp;Vznp];
        EjespL=EjespL*scale;
        PMp1=((LKNE(1)+LANK(1))/2);
        PMp2=((LKNE(2)+LANK(2))/2);
        PMp3=((LKNE(3)+LANK(3))/2);
        PMp=[PMp1 PMp2 PMp3];
        origenpL(1,:)=PMp;origenpL(2,:)=PMp;origenpL(3,:)=PMp;

        quiver3(origenpL(:,1),origenpL(:,2),origenpL(:,3),EjespL(:,1),EjespL(:,2),EjespL(:,3)),...
                   text(origenpL(:,1)+EjespL(:,1),origenpL(:,2)+EjespL(:,2),origenpL(:,3)+EjespL(:,3),{'x','y','z'},'color','r');

    %%SLR PIE IZQUIERDO
  
        Vxpi=LHEE-LANK;
        Vauxpi=LTOE-LANK;
        Vzpi=cross(Vauxpi,Vxpi);
        Vypi=cross(Vzpi,Vxpi);
        Vxnpi=Vxpi/norm(Vxpi);
        Vynpi=Vypi/norm(Vypi);
        Vznpi=Vzpi/norm(Vzpi);
        EjespiL=[Vxnpi;Vynpi;Vznpi];
        EjespiL=EjespiL*scale;
        PMpi1=((LHEE(1)+LTOE(1))/2);
        PMpi2=((LHEE(2)+LTOE(2))/2);
        PMpi3=((LHEE(3)+LTOE(3))/2);
        PMpi=[PMpi1 PMpi2 PMpi3];
        origenpiL(1,:)=PMpi;origenpiL(2,:)=PMpi;origenpiL(3,:)=PMpi;

        quiver3(origenpiL(:,1),origenpiL(:,2),origenpiL(:,3),EjespiL(:,1),EjespiL(:,2),EjespiL(:,3)),...
                   text(origenpiL(:,1)+EjespiL(:,1),origenpiL(:,2)+EjespiL(:,2),origenpiL(:,3)+EjespiL(:,3),{'x','y','z'},'color','r');

    %%SLR muslo derecho
        Vz1=RASIS-RKNE;
        Vaux1=RTHI-RASIS;
        Vy1=cross(Vz1,Vaux1);
        Vx1=cross(Vy1,Vz1);
        Vxn1=Vx1/norm(Vx1);
        Vyn1=Vy1/norm(Vy1);
        Vzn1=Vz1/norm(Vz1);
        Ejes1R=[Vxn1;Vyn1;Vzn1];
        Ejes1R=Ejes1R*scale;
        PM1=((RASIS(1)+RKNE(1))/2);
        PM2=((RASIS(2)+RKNE(2))/2);
        PM3=((RASIS(3)+RKNE(3))/2);
        PM=[PM1 PM2 PM3];
        origen1R(1,:)=PM;origen1R(2,:)=PM;origen1R(3,:)=PM;
        quiver3(origen1R(:,1),origen1R(:,2),origen1R(:,3),Ejes1R(:,1),Ejes1R(:,2),Ejes1R(:,3)),...
                   text(origen1R(:,1)+Ejes1R(:,1),origen1R(:,2)+Ejes1R(:,2),origen1R(:,3)+Ejes1R(:,3),{'x','y','z'},'color','r');
    %%SLR PANTORILLA DERECHA
        Vzp=RKNE-RANK;
        Vauxp=RTIB-RKNE;
        Vyp=cross(Vzp,Vauxp);
        Vxp=cross(Vyp,Vzp);
        Vxnp=Vxp/norm(Vxp);
        Vynp=Vyp/norm(Vyp);
        Vznp=Vzp/norm(Vzp);
        EjespR=[Vxnp;Vynp;Vznp];
        EjespR=EjespR*scale;
        PMp1=((RKNE(1)+RANK(1))/2);
        PMp2=((RKNE(2)+RANK(2))/2);
        PMp3=((RKNE(3)+RANK(3))/2);
        PMp=[PMp1 PMp2 PMp3];
        origenpR(1,:)=PMp;origenpR(2,:)=PMp;origenpR(3,:)=PMp;
        quiver3(origenpR(:,1),origenpR(:,2),origenpR(:,3),EjespR(:,1),EjespR(:,2),EjespR(:,3)),...
                       text(origenpR(:,1)+EjespR(:,1),origenpR(:,2)+EjespR(:,2),origenpR(:,3)+EjespR(:,3),{'x','y','z'},'color','r');

    %%SLR PIE DERECHO
        Vypi=RANK-RHEE;
        Vauxpi=RTOE-RANK;
        Vzpi=cross(Vauxpi,Vypi);
        Vxpi=cross(Vzpi,Vypi);
        Vxnpi=Vxpi/norm(Vxpi);
        Vynpi=Vypi/norm(Vypi);
        Vznpi=Vzpi/norm(Vzpi);
        EjespiR=[Vynpi;Vxnpi;Vznpi];
        EjespiR=EjespiR*scale;
        PMpi1=((RHEE(1)+RTOE(1))/2);
        PMpi2=((RHEE(2)+RTOE(2))/2);
        PMpi3=((RHEE(3)+RTOE(3))/2);
        PMpi=[PMpi1 PMpi2 PMpi3];
        origenpiR(1,:)=PMpi;origenpiR(2,:)=PMpi;origenpiR(3,:)=PMpi;
        quiver3(origenpiR(:,1),origenpiR(:,2),origenpiR(:,3),EjespiR(:,1),EjespiR(:,2),EjespiR(:,3)),...
                       text(origenpiR(:,1)+EjespiR(:,1),origenpiR(:,2)+EjespiR(:,2),origenpiR(:,3)+EjespiR(:,3),{'x','y','z'},'color','r');

%% ROTACION
    %Rotacion SACRUM-MUSLO derecho
        M1=inv(EjesS)*Ejes1R;
        eulYYY = rotm2eul(M1,'XYZ');
        Ang_Cadera_R=rad2deg(eulYYY)
    %Rotacion MUSLO-PANTORILLA derecho
        M2=inv(Ejes1R)*EjespR;
        eulYYY2 = rotm2eul(M2,'XYZ');
        Ang_Rodilla_R=rad2deg(eulYYY2)
    %Rotacion PANTORILLA-PIE derecho
        M3=inv(EjespR)*EjespiR;
        eulYYY3 = rotm2eul(M3,'XYZ');
        Ang_Tobillo_R=rad2deg(eulYYY3)
    %Rotacion SACRUM-MUSLO izquierdo
        M4=inv(EjesS)*Ejes1L;
        eulYYY4 = rotm2eul(M4,'XYZ');
        Ang_Cadera_L=rad2deg(eulYYY4)
    %Rotacion MUSLO-PANTORILLA izquierdo
        M5=inv(Ejes1L)*EjespL;
        eulYYY5 = rotm2eul(M5,'XYZ');
        Ang_Rodilla_L=rad2deg(eulYYY5)
    %Rotacion PANTORILLA-PIE izquierdo
        M6=inv(EjespL)*EjespiL;
        eulYYY6 = rotm2eul(M6,'XYZ');
        Ang_Tobillo_L=rad2deg(eulYYY6)
    disp('*------------------------------------------------------------------*')
%% Angulos
    t(cont)=Data(i,1);
  %%Cadera
    angxCR(cont)=Ang_Cadera_R(1);          angyCR(cont)=Ang_Cadera_R(2);            angzCR(cont)=Ang_Cadera_R(3);
    angxCL(cont)=Ang_Cadera_L(1);          angyCL(cont)=Ang_Cadera_L(2);            angzCL(cont)=Ang_Cadera_L(3);
  %%Rodilla
    angxRL(cont)=Ang_Rodilla_L(1);         angyRL(cont)=Ang_Rodilla_L(2);           angzRL(cont)=Ang_Rodilla_L(3);
    angxRR(cont)=Ang_Rodilla_R(1);         angyRR(cont)=Ang_Rodilla_R(2);           angzRR(cont)=Ang_Rodilla_R(3);
  %%Tobillo
    angxTL(cont)=Ang_Tobillo_L(1);         angyTL(cont)=Ang_Tobillo_L(2);           angzTL(cont)=Ang_Tobillo_L(3);
    angxTR(cont)=Ang_Tobillo_R(1);         angyTR(cont)=Ang_Tobillo_R(2);           angzTR(cont)=Ang_Tobillo_R(3);
    cont=cont+1;
end
    figure(2)
    subplot(3,1,1)
     plot(t,angxCR)
     hold on; grid on;
     title('Ángulo Cadera Der. X')
     xlabel('s'); ylabel('°'); xlim([2.6 3.5]);
    subplot(3,1,2)
     plot(t,angyCR)
     hold on; grid on;
     title('Ángulo Cadera Der. Y')
     xlabel('s'); ylabel('°'); xlim([2.6 3.5]);
   subplot(3,1,3)
     plot(t,angzCR)
     hold on; grid on;
     title('Ángulo Cadera Der. Z')
     xlabel('s'); ylabel('°'); xlim([2.6 3.5]);
 
    figure(3)
    subplot(3,1,1)
     plot(t,angxCL)
     hold on; grid on; 
     title('Ángulo Cadera Izq. X')
     xlabel('s'); ylabel('°'); xlim([2.25 3.5]);
    subplot(3,1,2)
     plot(t,angyCL)
     hold on; grid on;
     title('Ángulo Cadera Izq. Y')
     xlabel('s'); ylabel('°'); xlim([2.25 3.5]);
   subplot(3,1,3)
     plot(t,angzCL)
     hold on; grid on;
     title('Ángulo Cadera Izq. Z')
     xlabel('s'); ylabel('°'); xlim([2.25 3.5]);
     
    figure(4)
    subplot(3,1,1)
     plot(t,angxRL)
     hold on; grid on;
     title('Ángulo Rodilla Izq. X')
     xlabel('s'); ylabel('°'); xlim([2.6 3.5]);
    subplot(3,1,2)
     plot(t,angyRL)
     hold on; grid on;
     title('Ángulo Rodilla Izq. Y')
     xlabel('s'); ylabel('°'); xlim([2.6 3.5]);
   subplot(3,1,3)
     plot(t,angzRL)
     hold on; grid on;
     title('Ángulo Rodilla Izq. Z')
     xlabel('s'); ylabel('°'); xlim([2.6 3.5]);
     
   figure(5)
    subplot(3,1,1)
     plot(t,angxRR)
     hold on; grid on;
     title('Ángulo Rodilla Der. X')
     xlabel('s'); ylabel('°'); xlim([2.6 3.5]);
    subplot(3,1,2)
     plot(t,angyRR)
     hold on; grid on;
     title('Ángulo Rodilla Der. Y')
     xlabel('s'); ylabel('°'); xlim([2.6 3.5]);
    subplot(3,1,3)
     plot(t,angzRR)
     hold on; grid on;
     title('Ángulo Rodilla Der. Z')
     xlabel('s'); ylabel('°'); xlim([2.6 3.5]);

    figure(6)
    subplot(3,1,1)
     plot(t,angxTR)
     hold on; grid on;
     title('Ángulo Tobillo Der. X')
     xlabel('s'); ylabel('°'); xlim([2.6 3.5]);
    subplot(3,1,2)
     plot(t,angyTR)
     hold on; grid on;
     title('Ángulo Tobillo Der. Y')
     xlabel('s'); ylabel('°'); xlim([2.6 3.5]);
   subplot(3,1,3)
     plot(t,angzTR)
     hold on; grid on;
     title('Ángulo Tobillo Der. Z')
     xlabel('s'); ylabel('°'); xlim([2.6 3.5]);
     
   figure(7)
    subplot(3,1,1)
     plot(t,angxTL)
     hold on; grid on;
     title('Ángulo Tobillo Izq. X')
     xlabel('s'); ylabel('°'); xlim([2.6 3.5]);
    subplot(3,1,2)
     plot(t,angyTL)
     hold on; grid on;
     title('Ángulo Tobillo Izq. Y')
     xlabel('s'); ylabel('°'); xlim([2.6 3.5]);
   subplot(3,1,3)
     plot(t,angzTL)
     hold on; grid on;
     title('Ángulo Tobillo Izq. Z')
     xlabel('s'); ylabel('°'); xlim([2.25 3.5]);