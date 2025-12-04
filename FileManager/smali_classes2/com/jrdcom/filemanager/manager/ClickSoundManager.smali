.class public Lcom/jrdcom/filemanager/manager/ClickSoundManager;
.super Ljava/lang/Object;
.source "ClickSoundManager.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/jrdcom/filemanager/manager/ClickSoundManager;->mAudioManager:Landroid/media/AudioManager;

    .line 11
    return-void
.end method


# virtual methods
.method public clickSound()V
    .locals 2

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/ClickSoundManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/ClickSoundManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :cond_0
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    :goto_0
    return-void
.end method
