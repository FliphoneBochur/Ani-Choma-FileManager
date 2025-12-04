.class public Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;
.super Ljava/lang/Object;
.source "SharedPreferenceUtils.java"


# static fields
.field private static final CURRENT_SAFE_NAME:Ljava/lang/String; = "boxFolderName"

.field private static final CURRENT_SAFE_ROOT:Ljava/lang/String; = "cardRootpath"

.field private static final CURRENT_VIEW_STATUS:Ljava/lang/String; = "viewstatus"

.field private static final FRIST_ENTER_SAFE:Ljava/lang/String; = "frist_enter_safe"

.field private static final KEY_SHOW_HIDDEN:Ljava/lang/String; = "key_show_hidden"

.field public static mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    sput-object v0, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changePrefCurrTag(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 127
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 128
    const-string v0, "curr_tag"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 129
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    return-void
.end method

.method public static changePrefViewBy(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 111
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 112
    const-string v0, "pref_view_by"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    return-void
.end method

.method public static changePrefsShowHidenFile(Landroid/content/Context;)Z
    .locals 3

    .line 99
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->isShowHidden(Landroid/content/Context;)Z

    move-result v0

    .line 100
    sget-object v1, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    xor-int/lit8 v2, v0, 0x1

    iput-boolean v2, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->isShowHidden:Z

    .line 101
    xor-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->setShowHidden(Landroid/content/Context;Z)V

    .line 102
    return v0
.end method

.method public static changePrefsSortBy(Lcom/jrdcom/filemanager/FileManagerApplication;I)V
    .locals 1

    .line 83
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/FileManagerApplication;->setDefaultSortBy(I)V

    .line 84
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 85
    const-string v0, "pref_sort_by"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    return-void
.end method

.method public static changePrefsStatus(Landroid/content/Context;I)V
    .locals 1

    .line 151
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 152
    const-string v0, "viewstatus"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 153
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 154
    return-void
.end method

.method public static changeSafePrefCurrTag(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 133
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 134
    const-string v0, "safe_curr_tag"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    return-void
.end method

.method public static getCategoryCountInfo(Landroid/content/Context;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 206
    const-string v0, "SharedPreferenceUtils"

    const-string v1, "getCategoryCountInfo()"

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 208
    if-nez p0, :cond_0

    .line 209
    return-object v1

    .line 211
    :cond_0
    const-string v2, "category"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 212
    const-string v2, "category_count"

    const-string v4, ""

    invoke-interface {p0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 213
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    return-object v1

    .line 218
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    .line 220
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v2

    .line 221
    if-eqz v2, :cond_2

    .line 222
    nop

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 223
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 224
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 225
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 230
    :cond_2
    goto :goto_1

    .line 228
    :catch_0
    move-exception p0

    .line 229
    const-string p0, "JSONException occurred when getCategoryCountInfo !"

    invoke-static {v0, p0}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_1
    return-object v1
.end method

.method public static getCurrentSafeName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 56
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "boxFolderName"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentSafeRoot(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 65
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "cardRootpath"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentViewMode(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 69
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "pref_view_by"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPermissionPrefCurrTag(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 145
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 146
    const-string v0, "curr_tag"

    const-string v1, "permissions"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrefCurrTag(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 122
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 123
    const-string v0, "curr_tag"

    const-string v1, "category"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrefsShowHidenFile(Landroid/content/Context;)I
    .locals 0

    .line 106
    sget-object p0, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean p0, p0, Lcom/jrdcom/filemanager/FileManagerApplication;->isShowHidden:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 107
    :cond_0
    const/4 p0, 0x2

    .line 106
    :goto_0
    return p0
.end method

.method public static getPrefsSortBy(Landroid/content/Context;)I
    .locals 2

    .line 90
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    const v1, 0x7f040005

    invoke-static {p0, v1}, Lcom/jrdcom/filemanager/PlfUtils;->getBoolResource(Landroid/content/Context;I)Z

    move-result p0

    const-string v1, "pref_sort_by"

    if-eqz p0, :cond_0

    .line 92
    const/4 p0, 0x0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 94
    :cond_0
    const/4 p0, 0x1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getPrefsStatus(Landroid/content/Context;)I
    .locals 2

    .line 157
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 158
    const-string v0, "viewstatus"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getPrefsViewBy(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 117
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 118
    const-string v0, "pref_view_by"

    const-string v1, "listMode"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSafePrefCurrTag(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 139
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 140
    const-string v0, "safe_curr_tag"

    const-string v1, "category"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 32
    const-string v0, "filemanager_sp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static isFristEnterSafe(Landroid/content/Context;)Z
    .locals 2

    .line 73
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "frist_enter_safe"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isShowHidden(Landroid/content/Context;)Z
    .locals 2

    .line 41
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "key_show_hidden"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static removeShowHiddenPref(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 46
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "key_show_hidden"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    return-void
.end method

.method public static resetPrefsStatus(Landroid/content/Context;)V
    .locals 2

    .line 162
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 163
    const-string v0, "viewstatus"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 165
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 168
    :cond_0
    return-void
.end method

.method public static saveCategoryCountInfo(Landroid/content/Context;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 176
    const-string v0, "SharedPreferenceUtils"

    const-string v1, "saveCategoryCountInfo()"

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 181
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 182
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 183
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 184
    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 187
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 188
    :catch_0
    move-exception v3

    .line 190
    const-string v3, "JSONException occurred when saveCategoryCountInfo !"

    invoke-static {v0, v3}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :goto_1
    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 194
    const/4 p1, 0x0

    const-string v0, "category"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 195
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 196
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "category_count"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 197
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 198
    return-void

    .line 178
    :cond_2
    :goto_2
    return-void
.end method

.method public static setCurrentSafeName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 51
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 52
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "boxFolderName"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 53
    return-void
.end method

.method public static setCurrentSafeRoot(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 60
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 61
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "cardRootpath"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    return-void
.end method

.method public static setFristEnterSafe(Landroid/content/Context;Z)V
    .locals 1

    .line 77
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 78
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "frist_enter_safe"

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    return-void
.end method

.method public static setShowHidden(Landroid/content/Context;Z)V
    .locals 1

    .line 36
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 37
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "key_show_hidden"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    return-void
.end method
