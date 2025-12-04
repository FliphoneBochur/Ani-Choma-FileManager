.class public abstract Ltct/util/privacymode/ITctPrivacyModeResult$Stub;
.super Landroid/os/Binder;
.source "ITctPrivacyModeResult.java"

# interfaces
.implements Ltct/util/privacymode/ITctPrivacyModeResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltct/util/privacymode/ITctPrivacyModeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltct/util/privacymode/ITctPrivacyModeResult$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "tct.util.privacymode.ITctPrivacyModeResult"

.field static final TRANSACTION_onResult:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "tct.util.privacymode.ITctPrivacyModeResult"

    invoke-virtual {p0, p0, v0}, Ltct/util/privacymode/ITctPrivacyModeResult$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Ltct/util/privacymode/ITctPrivacyModeResult;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "tct.util.privacymode.ITctPrivacyModeResult"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Ltct/util/privacymode/ITctPrivacyModeResult;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Ltct/util/privacymode/ITctPrivacyModeResult;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Ltct/util/privacymode/ITctPrivacyModeResult$Stub$Proxy;

    invoke-direct {v1, p0}, Ltct/util/privacymode/ITctPrivacyModeResult$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    const-string v0, "tct.util.privacymode.ITctPrivacyModeResult"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 47
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v1

    .line 52
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 55
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Ltct/util/privacymode/ITctPrivacyModeResult$Stub;->onResult(I)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    return v1
.end method
