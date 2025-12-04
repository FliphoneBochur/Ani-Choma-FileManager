.class public Lcom/jrdcom/filemanager/receiver/FilesReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FilesReceiver.java"


# static fields
.field public static final PREF_BY:Ljava/lang/String; = "sort_item"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

.field private prefsNames:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/jrdcom/filemanager/receiver/FilesReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/receiver/FilesReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p0, Lcom/jrdcom/filemanager/receiver/FilesReceiver;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 22
    const-string v0, "com.jrdcom.filemanager_preferences"

    iput-object v0, p0, Lcom/jrdcom/filemanager/receiver/FilesReceiver;->prefsNames:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 28
    const-string v0, "tcl.intent.action.LAUNCH_DEVICE_RESET"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const-string p2, "TAG"

    const-string v0, "Receive tcl.intent.action.LAUNCH_DEVICE_RESET"

    invoke-static {p2, v0}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object p2, p0, Lcom/jrdcom/filemanager/receiver/FilesReceiver;->prefsNames:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 31
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 32
    const-string v1, "sort_item"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 33
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 34
    const-string p2, "filemanager_sp"

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 35
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 36
    const-string v1, "pref_sort_by"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 37
    const-string v0, "pref_view_by"

    const-string v1, "listMode"

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->removeShowHiddenPref(Landroid/content/Context;)V

    goto :goto_0

    .line 40
    :cond_0
    const-string p1, "android.intent.action.TIME_SET"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 41
    iget-object p1, p0, Lcom/jrdcom/filemanager/receiver/FilesReceiver;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    if-eqz p1, :cond_2

    .line 43
    iget-object p1, p0, Lcom/jrdcom/filemanager/receiver/FilesReceiver;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Lcom/jrdcom/filemanager/utils/FileListCache;->removeCache(Ljava/lang/String;)V

    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    nop

    .line 46
    :cond_2
    :goto_1
    return-void
.end method
