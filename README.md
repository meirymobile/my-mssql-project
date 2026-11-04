# 🚀 Cloud MS SQL Server Environment

סביבת עבודה מלאה של **Microsoft SQL Server 2022** בענן, מבוססת **GitHub Codespaces**.
מאפשרת הרצת שרת SQL מלא וכתיבת שאילתות מכל מכשיר – **Mac, PC או iPad** – ישירות מתוך הדפדפן (או באפליקציית VS Code), ללא צורך בהתקנת דוקר או תוכנות כבדות מקומית!

---

## ⚡ הפעלה מהירה (בכל מכשיר / דפדפן / iPad)

### אופציה א' (מומלץ לסטודנטים) – יצירת עותק אישי בחשבון שלכם:
1. לחצו על הכפתור הירוק למעלה: **`Use this template`** > **`Create a new repository`**  
   *(או גשו ישירות לקישור: **[יצירת פרויקט אישי מהתבנית](https://github.com/meirymobile/my-mssql-project/generate)**)*.
2. תנו שם לפרויקט שלכם (למשל: `my-sql-course`) ולחצו על **Create repository**.
3. במאגר החדש שנוצר אצלכם, לחצו על **`< > Code`** > לשונית **Codespaces** > **Create codespace on main**.
   * כעת יש לכם שרת SQL פרטי ומאגר עצמאי שבו כל העבודה והשאילתות שלכם נשמרות בחשבון שלכם!

---

### אופציה ב' – פתיחת סביבה מיידית ישירות מכאן:
[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/meirymobile/my-mssql-project)

*(או בגיטהאב: לחצו על הכפתור הירוק **`< > Code`** > לשונית **Codespaces** > **Create codespace on main**)*.

---

## 🛠️ מה כלול בסביבת הענן?

1. **מנוע שרת:** Microsoft SQL Server 2022 הרץ בקונטיינר ענן ייעודי.
2. **עורך קוד מושלם בדפדפן:** VS Code Web מלא עם תוסף `mssql` מותקן ומוגדר מראש.
3. **גיבוי וסנכרון אוטומטי (Auto-Backup):** תהליך רקע מבצע אוטומטית `commit` ו-`push` ל-GitHub בכל פעם שנוצר שינוי בקבצי ה-SQL שלך.
4. **ממשק ניהול ב-Web (CloudBeaver):** ממשק גרפי ידידותי מאוד למשתמשים ולאייפד (מבית DBeaver) הרץ על פורט `8978`.
5. **קובץ תרגול מוכן:** [`init.sql`](./init.sql) שיוצר בסיס נתונים לדוגמה וטבלת סטודנטים.

---

## 🔑 פרטי התחברות לשרת (Connection Details)

| פרמטר | ערך |
| :--- | :--- |
| **Server / Host** | `localhost` (או `db`) |
| **Port** | `1433` |
| **User** | `sa` |
| **Password** | `StudentSql2026Secure!` |
| **Trust Server Certificate** | `True` |

---

## 📱 איך להשתמש מ-iPad או דפדפן?

### אופציה 1: עבודה ב-VS Code בענן (חיבור אוטומטי מראש)
1. ה-Codespace נפתח בחלון הדפדפן.
2. בצד שמאל לוחצים על האייקון של **SQL Server** (ציור של מסד נתונים 🗄️).
3. החיבור **`Cloud_SQL_Server`** כבר מוכן ומחובר אוטומטית!
4. פותחים את הקובץ `init.sql` ולוחצים על **Execute** (או `Ctrl + Shift + E` / `Cmd + Shift + E`).

### אופציה 2: עבודה בממשק הגרפי CloudBeaver (נוח במיוחד לאייפד)
1. בסרגל התחתון ב-VS Code לחצו על לשונית **PORTS** (פורטים).
2. ליד פורט **8978 (CloudBeaver Web UI)**, לחצו על אייקון כדור הארץ 🌐 (**Open in Browser**).
3. ייפתח ממשק Web מלא בטאב חדש שבו ניתן לראות טבלאות, להריץ שאילתות ולנהל נתונים במגע (Touch).