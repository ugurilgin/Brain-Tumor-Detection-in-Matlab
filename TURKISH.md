# EHM-428 Yapay Görme ve Örüntü Tanımaya Giriş
## Matlabta MR Görüntüsünden Beyin Tümörü Tespiti
### 1.1. Projenin Konusu
Beyin tümörleri, kafatası içerisinde büyüyerek beyin üzerine yaptıkları baskı ile
ilerleyen evrelerde yaşamı tehdit edebilmektedir. Kötü huylu beyin tümörleri son yıllarda insan
ölümlerinin önemli nedenlerinden bir tanesi olmaya başlamıştır. Eğer tümör erken bir aşamada
tespit edilerek doğru sınıflandırılabilirse, hastaların hayatta kalma şansı artırılabilmektedir.
Beyin kanseri için seçilecek en uygun tedavi, doktorun tümörün türünü, konumunu,
büyüklüğünü ve sınırlarını kesin bir şekilde tespit etmesine bağlıdır. Bu sebeple, radyolog ve
doktorların beyin tümörlerini yüksek başarıyla tespit edebilmesine yardımcı olacak bir
bilgisayar destekli teşhis / tespit sistemi kullanması son derece önemlidir. Bu çalışmada, MR
görüntülerini üzerinden MATLAB kullanılarak beyin tümörü analizi gerçekleştirilmesi
hedeflenmiştir. Bu amaçla kullanıcı arayüzüne sahip bir uygulama yazılımı tasarlanmıştır.
Böylece hekimlerin karar verme aşamalarında hem kolaylık sağlanarak oluşabilecek muhtemel
hataların önüne geçilmesi hem de tasarlanan uygulamanın ikincil bir araç olarak kullanılması
hedeflenmiştir. Tasarlanan uygulama yardımıyla beyin tümörlerinin başarılı bir şekilde tespit
edildiği görülmüştür.
### 1.2.Projenin Hedefleri
MATLAB kullanılarak görsel kullanıcı arayüzüne sahip bir uygulama geliştirmektir.
1. Görsel kullanıcı arayüzü sahip bir uygulama geliştirmek
2. MR Görüntüleri kullanılarak beyin tümörünün tespit edilmesi
3. Median Filter, Edge Detection,Segmentation algoritmalarının MR Görüntülerine
uygulanması
4. Örnek resmin histogramını çizdirmek
5. Tüm resim formatlarının açabilen bir uygulama tasarlamak
Yapılmış olan kullanıcı arayüzlü MR Görüntülerinden Beyin Tümörü Tespit programı
yukarıda hedefleri gerçekleştirmeyi hedeflemektedir.
### 1.3. Projede Kullanılan Teknolojiler
Projede kullanılan programlama dili Yapay Zeka ,Sinyal İşleme ve Görüntü İşleme
alanında sıklıkla tercih edilen MATLAB programlama dilidir .
## Programın Çalıştırılması 
* Matlab programı açıldıktan sonra mainmenu.fig dosyası seçilerek program başlatılır.
- Not mainmenu.m dosyası içerindeki Cover Image yolunu kendi bilgisayarınızdaki face.png resminin konumuyla değiştirmeniz gerekmektedir.
## Ekran Görüntüleri 
### Anamenü 
Anamenüde Matlab'ta görsel bir kullanıcı arayüzüne sahip bir menü tasarlanmıştır.İki şekilde beyin tümörü algılama yapılabilir ilk olarak [Hızlı Beyin Tümörü Tespiti ](https://github.com/ugurilgin/Brain-Tumor-Detection-in-Matlab/blob/main/Matlab%20Beyin%20Tümörü%20Tespiti/hizlitumor.m) daha az detaylı olarak beyin tümörü tespiti gerçekleştirilebilir. İkinci olarak
[Detaylı Beyin Tümörü Tespiti ](https://github.com/ugurilgin/Brain-Tumor-Detection-in-Matlab/blob/main/Matlab%20Beyin%20Tümörü%20Tespiti/detaylitumor.m)  yardımıyla detaylı beyin tümörü tespit sonuçlarına ulaşılabilir.
![logo](/img/2020-12-14_17-47-52.png)
### Hızlı Beyin Tümörü Tespiti
![logo](/img/2020-12-14_17-51-42.png)
* Hızlı Beyin Tümörü Tespitinde 'Resmi Seç' butonuna tıklanarak resim seçildikten sonra 'Tümörü Algıla ' Butonuna tıklanarak tümör tespiti gerçekleştirilir.
![logo](/img/2020-12-14_17-50-13.png)
* İstenildiği takdirde 'Histogramı Çiz' butonu yardımıyla resmin histogram görüntüsü oluşturulabilir.
![logo](/img/2020-12-14_17-50-34.png)
### Detaylı Beyin Tümörü Tespiti
![logo](/img/2020-12-14_17-50-57.png)
* Detaylı Beyin Tümörü Tespitinde 'Resmi Seç' butonuna tıklanarak resim seçildikten sonra 'Tümörü Algıla ' Butonuna tıklanarak tümör tespiti gerçekleştirilir.
![logo](/img/2020-12-14_17-51-18.png)
