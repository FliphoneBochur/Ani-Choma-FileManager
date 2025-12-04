.class public interface abstract Lcom/jrdcom/filemanager/MountReceiver$MountListener;
.super Ljava/lang/Object;
.source "MountReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/MountReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MountListener"
.end annotation


# virtual methods
.method public abstract onEject()V
.end method

.method public abstract onMounted()V
.end method

.method public abstract onScannerFinished()V
.end method

.method public abstract onScannerStarted()V
.end method

.method public abstract onUnmounted(Ljava/lang/String;)V
.end method
