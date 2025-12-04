.class public Lcom/jrdcom/filemanager/singleton/NotificationMap;
.super Ljava/util/HashMap;
.source "NotificationMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap;"
    }
.end annotation


# static fields
.field private static runSingle:Lcom/jrdcom/filemanager/singleton/NotificationMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jrdcom/filemanager/singleton/NotificationMap<",
            "Ljava/lang/Long;",
            "Landroid/app/Notification$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/jrdcom/filemanager/singleton/NotificationMap;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/singleton/NotificationMap;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/singleton/NotificationMap;->runSingle:Lcom/jrdcom/filemanager/singleton/NotificationMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 13
    return-void
.end method

.method public static addNotification(JLandroid/app/Notification$Builder;)V
    .locals 1

    .line 22
    sget-object v0, Lcom/jrdcom/filemanager/singleton/NotificationMap;->runSingle:Lcom/jrdcom/filemanager/singleton/NotificationMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Lcom/jrdcom/filemanager/singleton/NotificationMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
.end method

.method public static clearAllNotification()V
    .locals 1

    .line 30
    sget-object v0, Lcom/jrdcom/filemanager/singleton/NotificationMap;->runSingle:Lcom/jrdcom/filemanager/singleton/NotificationMap;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/singleton/NotificationMap;->clear()V

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/jrdcom/filemanager/singleton/NotificationMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jrdcom/filemanager/singleton/NotificationMap<",
            "Ljava/lang/Long;",
            "Landroid/app/Notification$Builder;",
            ">;"
        }
    .end annotation

    .line 18
    sget-object v0, Lcom/jrdcom/filemanager/singleton/NotificationMap;->runSingle:Lcom/jrdcom/filemanager/singleton/NotificationMap;

    return-object v0
.end method

.method public static getNotification(J)Landroid/app/Notification$Builder;
    .locals 1

    .line 34
    sget-object v0, Lcom/jrdcom/filemanager/singleton/NotificationMap;->runSingle:Lcom/jrdcom/filemanager/singleton/NotificationMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/jrdcom/filemanager/singleton/NotificationMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public static getNotificationSize()I
    .locals 1

    .line 38
    sget-object v0, Lcom/jrdcom/filemanager/singleton/NotificationMap;->runSingle:Lcom/jrdcom/filemanager/singleton/NotificationMap;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/singleton/NotificationMap;->size()I

    move-result v0

    return v0
.end method

.method public static removeNotification(J)V
    .locals 1

    .line 26
    sget-object v0, Lcom/jrdcom/filemanager/singleton/NotificationMap;->runSingle:Lcom/jrdcom/filemanager/singleton/NotificationMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/jrdcom/filemanager/singleton/NotificationMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method
