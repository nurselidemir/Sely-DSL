<h1>Sely DSL - Alan Özgü Dil Projesi</h1>

<p><strong>Açıklama:</strong> Sely, basit çizim işlemleri yapabilen, C-benzeri sentaksı olan bir alan özgü dildir (DSL). Flex ve Bison kullanılarak geliştirilen lexer ve parser ile dilin gramer yapısı kontrol edilir.</p>

<h2>📁 Proje Dosya Yapısı</h2>
<ul>
  <li><code>sely.l</code> – Lexer tanımlamaları</li>
  <li><code>sely.y</code> – Parser gramer tanımları</li>
  <li><code>Makefile</code> – Projenin derlenmesi için yapılandırma</li>
  <li><code>lex.yy.c</code>, <code>sely.tab.c</code>, <code>sely.tab.h</code> – Derleme sonrası oluşturulan kaynaklar</li>
  <li><code>sely</code> – Derlenen çalıştırılabilir dosya (parser)</li>
  <li><code>ornek1.sely</code>, <code>ornek2.sely</code>, <code>ornek3.sely</code>, <code>ornek4.sely</code> – Test ve örnek DSL kod dosyaları</li>
</ul>

<h2>🚀 Kurulum ve Çalıştırma</h2>
<ol>
  <li>Flex ve Bison kurulu olmalıdır.</li>
  <li>Projeyi derlemek için terminalde proje dizininde <code>make</code> komutunu çalıştırınız.</li>
  <li>Derleme sonrası parser programını örnek dosyalardan biriyle çalıştırmak için:
    <pre><code>./sely ornek1.sely</code></pre>
  </li>
  <li>Başarılı ayrıştırma durumunda aşağıdaki mesaj görünür:
    <pre><code>[Başarılı] Kod gramer kurallarına uygundur.</code></pre>
  </li>
</ol>

<hr>

<h2>📌 Önemli Notlar</h2>
<ul>
  <li>Parser yalnızca gramer kontrolü yapar, yorumlama veya yürütme işlemi içermez.</li>
  <li>Hatalı DSL kodlarında, hata mesajları satır numarası ile gösterilir.</li>
</ul>

<hr>

<h2>🛠️ İletişim ve Katkı</h2>
<p>Proje ile ilgili soru ve katkılar için lütfen iletişime geçiniz.</p>



