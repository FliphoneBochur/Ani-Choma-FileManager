.class public Lcom/jrdcom/filemanager/activity/FileDetailActivity;
.super Lcom/jrdcom/filemanager/activity/FileBaseActivity;
.source "FileDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/activity/FileDetailActivity$SingleHolder;,
        Lcom/jrdcom/filemanager/activity/FileDetailActivity$SimPickerAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public setMainContentView()V
    .locals 1

    .line 30
    sget-boolean v0, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-eqz v0, :cond_0

    .line 31
    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileDetailActivity;->setContentView(I)V

    goto :goto_0

    .line 33
    :cond_0
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileDetailActivity;->setContentView(I)V

    .line 36
    :goto_0
    return-void
.end method
