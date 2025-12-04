.class public Lcom/jrdcom/filemanager/view/ResetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ResetReceiver.java"


# static fields
.field public static final LIST_MODE:Ljava/lang/String; = "listMode"

.field public static final PREF_BY:Ljava/lang/String; = "sort_item"

.field public static final PREF_VIEW_BY:Ljava/lang/String; = "pref_view_by"


# instance fields
.field private prefsName:Ljava/lang/String;

.field private prefsNames:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    const-string v0, "activity.FileBrowserActivity"

    iput-object v0, p0, Lcom/jrdcom/filemanager/view/ResetReceiver;->prefsName:Ljava/lang/String;

    .line 17
    const-string v0, "com.jrdcom.filemanager_preferences"

    iput-object v0, p0, Lcom/jrdcom/filemanager/view/ResetReceiver;->prefsNames:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 21
    iget-object p2, p0, Lcom/jrdcom/filemanager/view/ResetReceiver;->prefsNames:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 22
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 23
    const-string v1, "sort_item"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 24
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 25
    iget-object p2, p0, Lcom/jrdcom/filemanager/view/ResetReceiver;->prefsName:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 26
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 27
    const-string v1, "pref_sort_by"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 28
    const-string v0, "pref_view_by"

    const-string v1, "listMode"

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 29
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 30
    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->removeShowHiddenPref(Landroid/content/Context;)V

    .line 31
    return-void
.end method
