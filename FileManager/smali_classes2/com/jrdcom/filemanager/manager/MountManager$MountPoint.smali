.class Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;
.super Ljava/lang/Object;
.source "MountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/manager/MountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MountPoint"
.end annotation


# instance fields
.field isOTG:Z

.field isSdCard:Z

.field mDescription:Ljava/lang/String;

.field mIsExternal:Z

.field mIsMounted:Z

.field mPath:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jrdcom/filemanager/manager/MountManager$1;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/jrdcom/filemanager/manager/MountManager$MountPoint;-><init>()V

    return-void
.end method
