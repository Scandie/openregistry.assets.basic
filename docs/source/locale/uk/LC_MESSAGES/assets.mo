��    !      $      ,      ,     -     B  0   X     �     �     �     �  m   �  2  N  "   �     �  (   �     �     �                  &   .  H   U  E   �  a   �  X   F  �   �     I     Y     l     �     �     �  $   �     �     �  H  �      
  &   ?
  `   f
     �
  *   �
  5   �
  5   5  �   k  O  J  S   �     �  H        W  9   w     �     �     �  T   �  g   J  j   �  �     �   �  M  k      �  "   �  }   �     {     �  �   �  P   4     �     �   **Example request**: **Example response**: Assets returned are sorted by modification time. Batching Getting asset details. Getting list of all assets Getting list of all assets. If next page request returns no data (i.e. empty array) then there is little sense in fetching further pages. It is often necessary to be able to syncronize central database changes with other database (we'll call it "local").  The default sorting "by modification date" together with Batching mechanism allows one to implement synchronization effectively.  The synchronization process can go page by page until there is no new data returned.  Then the synchronizer has to pause for a while to let central database register some changes and attempt fetching subsequent page.  The `next_page` guarantees that all changes from the last request are included in the new batch. Limiting number of Assets returned Query Parameters Reading the individual asset information Request Headers Retrieving Asset Information Sorting Status Codes Synchronizing The full version of URL for next page. The response contains `next_page` element with the following properties: The safe frequency of synchronization requests is once per 5 minutes. This is path section of URL with original parameters and `offset` parameter added/replaced above. This is the parameter you have to add to the original request you made to get next page. You can control the number of `data` entries in the assets feed (batch size) with `limit` parameter. If not specified, data is being returned in batches of 100 elements. asset not found endpoint not found limit number. default is 100 no error offset offset number optional OAuth token to authenticate path uri Project-Id-Version: openregistry.assets.basic 0.1.dev0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-08-15 10:16+0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
 **Приклад запиту**: **Приклад відповіді**: Повернені активи просортовані за датою модифікації. Пакети Отримати деталі активу Отримати список всіх активів Отримати список всіх активів Якщо запит наступної сторінки повертається без даних (наприклад, пустий масив), тоді немає сенсу викликати сторінки далі. Часто необхідно мати можливість синхронізувати зміни центральної бази даних з іншою базою даних (ми будемо називати її “локальною”). Стандартне сортування “за датою модифікації” разом із механізмом пакетування дозволяє ефективно здійснювати синхронізацію. Процес синхронізації може виконуватись посторінково, поки не буде жодних нових даних, що повертаються. Тоді синхронізатор призупиниться на деякий час, щоб дозволити центральній базі даних зареєструвати деякі зміни і спробувати завантажити наступну сторінку. next_page гарантує, що усі зміни з останнього запиту будуть включені у новий пакет. Обмеження кількості активів, що повертаються Параметри запиту Прочитати інформацію про окремі активи Заголовки запиту Отримання інформації про актив Сортування Коди стану Синхронізація Повна версія URL-адреси для наступної сторінки. Відповідь містить елемент `next_page`з такими властивостями: Безпечна частота запитів на синхронізацію - раз в 5 хвилин. Це частина шляху URL-адреси з вихідними параметрами та доданим/заміненим `offset` параметром вище. Це параметр, який ви повинні додати до вихідного запиту, щоб отримати наступну сторінку. Ви можете контролювати кількість `data` записів потоку даних активів (розмір пакета) за допомогою параметра `limit`. Якщо він не вказаний, то дані будуть повернені пакетами по 100 елементів. актив не знайдено ресурс не знайдено обмеження кількості активів, що повертаються (дефолтне значення - 100) без помилок offset параметр, який ви повинні додати до вихідного запиту, щоб отримати наступну сторінку необов'язковий токен OAuth для аутентифікації path uri 