.class public Lcom/jrdcom/filemanager/dialog/ProgressNotification;
.super Ljava/lang/Object;
.source "ProgressNotification.java"


# static fields
.field private static final FILEMANAGER_NOTIFICATION_CHANNEL:Ljava/lang/String; = "filemanagerpro_notification_channel01"

.field private static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;J)Landroid/app/Notification$Builder;
    .locals 8

    .line 29
    sput-object p0, Lcom/jrdcom/filemanager/dialog/ProgressNotification;->mContext:Landroid/content/Context;

    .line 30
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 31
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "filemanagerpro_notification_channel01"

    const-string v3, "filemanager_channel"

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 32
    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 33
    nop

    .line 36
    new-instance p0, Landroid/widget/RemoteViews;

    sget-object v1, Lcom/jrdcom/filemanager/dialog/ProgressNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0061

    invoke-direct {p0, v1, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 38
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v3, 0x8000000

    const/4 v4, 0x1

    const/16 v5, 0x18

    if-ge v1, v5, :cond_0

    .line 39
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/jrdcom/filemanager/dialog/ProgressNotification;->mContext:Landroid/content/Context;

    const-class v5, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-direct {v1, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 41
    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    const-string v0, "turnTime"

    invoke-virtual {v2, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 43
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 44
    sget-object v0, Lcom/jrdcom/filemanager/dialog/ProgressNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    long-to-int p1, p1

    add-int/lit8 p1, p1, 0x2

    invoke-static {v0, p1, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 46
    new-instance p2, Landroid/app/Notification$Builder;

    sget-object v0, Lcom/jrdcom/filemanager/dialog/ProgressNotification;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 47
    const v0, 0x7f0800f4

    const v1, 0x7f0700b3

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 48
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 49
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 50
    invoke-virtual {p2, p0}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 51
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    iget p1, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroid/app/Notification;->flags:I

    .line 52
    goto/16 :goto_0

    .line 53
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/jrdcom/filemanager/dialog/ProgressNotification;->mContext:Landroid/content/Context;

    const-class v5, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 55
    const-string v5, "showDialog"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    const-string v5, "createTime"

    invoke-virtual {v1, v5, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 58
    sget-object v1, Lcom/jrdcom/filemanager/dialog/ProgressNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    long-to-int v5, p1

    invoke-static {v1, v5, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 61
    new-instance v1, Landroid/content/Intent;

    sget-object v6, Lcom/jrdcom/filemanager/dialog/ProgressNotification;->mContext:Landroid/content/Context;

    const-class v7, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 63
    const-string v7, "cancel"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    const-string v7, "cancelTime"

    invoke-virtual {v6, v7, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 65
    invoke-virtual {v1, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 66
    sget-object p1, Lcom/jrdcom/filemanager/dialog/ProgressNotification;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    add-int/2addr v5, v4

    invoke-static {p1, v5, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 69
    new-instance p2, Landroid/app/Notification$Action$Builder;

    sget-object v1, Lcom/jrdcom/filemanager/dialog/ProgressNotification;->mContext:Landroid/content/Context;

    const v3, 0x7f0c00e1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {p2, v3, v1, v0}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p2

    .line 70
    new-instance v0, Landroid/app/Notification$Action$Builder;

    sget-object v1, Lcom/jrdcom/filemanager/dialog/ProgressNotification;->mContext:Landroid/content/Context;

    const v4, 0x7f0c002f

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1, p1}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p1

    .line 71
    new-instance v0, Landroid/app/Notification$Builder;

    sget-object v1, Lcom/jrdcom/filemanager/dialog/ProgressNotification;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 73
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 74
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 75
    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p0

    new-instance p1, Landroid/app/Notification$DecoratedCustomViewStyle;

    invoke-direct {p1}, Landroid/app/Notification$DecoratedCustomViewStyle;-><init>()V

    .line 76
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 77
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    iget p1, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroid/app/Notification;->flags:I

    .line 79
    :goto_0
    return-object p2
.end method
