.class public Ltct/util/privacymode/TctPrivacyModeHelper;
.super Ljava/lang/Object;
.source "TctPrivacyModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltct/util/privacymode/TctPrivacyModeHelper$OnResultListener;
    }
.end annotation


# static fields
.field private static final FILE_URI:Landroid/net/Uri;

.field private static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final PRIVATE_APP_CONTENT_URI:Landroid/net/Uri;

.field private static final TCT_IS_PRIVATE:Ljava/lang/String; = "tct_is_private"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-string v0, "content://com.tct.privacymode.provider/privacy_apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ltct/util/privacymode/TctPrivacyModeHelper;->PRIVATE_APP_CONTENT_URI:Landroid/net/Uri;

    .line 53
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ltct/util/privacymode/TctPrivacyModeHelper;->FILE_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Ltct/util/privacymode/TctPrivacyModeHelper;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method public static createHelper(Landroid/content/Context;)Ltct/util/privacymode/TctPrivacyModeHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 62
    new-instance v0, Ltct/util/privacymode/TctPrivacyModeHelper;

    invoke-direct {v0, p0}, Ltct/util/privacymode/TctPrivacyModeHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public enterPrivacyMode(ZLtct/util/privacymode/TctPrivacyModeHelper$OnResultListener;)V
    .locals 2
    .param p1, "isPrivacy"    # Z
    .param p2, "resultListener"    # Ltct/util/privacymode/TctPrivacyModeHelper$OnResultListener;

    .line 70
    new-instance v0, Ltct/util/privacymode/TctPrivacyModeHelperImpl;

    iget-object v1, p0, Ltct/util/privacymode/TctPrivacyModeHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Ltct/util/privacymode/TctPrivacyModeHelperImpl;-><init>(Landroid/content/Context;)V

    .line 71
    .local v0, "impl":Ltct/util/privacymode/TctPrivacyModeHelperImpl;
    invoke-virtual {v0, p1, p2}, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->enterPrivacyMode(ZLtct/util/privacymode/TctPrivacyModeHelper$OnResultListener;)V

    .line 72
    return-void
.end method

.method public enterPrivacyMode(Z)Z
    .locals 2
    .param p1, "isPrivacy"    # Z

    .line 109
    new-instance v0, Ltct/util/privacymode/TctPrivacyModeHelperImpl;

    iget-object v1, p0, Ltct/util/privacymode/TctPrivacyModeHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Ltct/util/privacymode/TctPrivacyModeHelperImpl;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, "impl":Ltct/util/privacymode/TctPrivacyModeHelperImpl;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->enterPrivacyMode(ZLtct/util/privacymode/TctPrivacyModeHelper$OnResultListener;)V

    .line 111
    const/4 v1, 0x1

    return v1
.end method

.method public getAllPrivateApp()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v0, "packageNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Ltct/util/privacymode/TctPrivacyModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 146
    .local v1, "cr":Landroid/content/ContentResolver;
    sget-object v3, Ltct/util/privacymode/TctPrivacyModeHelper;->PRIVATE_APP_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "package_name"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 147
    .local v2, "c":Landroid/database/Cursor;
    if-eqz v2, :cond_0

    .line 149
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 152
    goto :goto_0

    .line 151
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v3

    .line 154
    :cond_0
    :goto_0
    return-object v0
.end method

.method public getNormalPassword()Ljava/lang/String;
    .locals 2

    .line 87
    iget-object v0, p0, Ltct/util/privacymode/TctPrivacyModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "normal_mode_password"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivacyPassword()Ljava/lang/String;
    .locals 2

    .line 75
    invoke-virtual {p0}, Ltct/util/privacymode/TctPrivacyModeHelper;->isPrivacyModeEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Ltct/util/privacymode/TctPrivacyModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "privacy_mode_password"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSwitchToNormalModeTimestamp()J
    .locals 4

    .line 115
    iget-object v0, p0, Ltct/util/privacymode/TctPrivacyModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "switch_to_normal_mode_timestamp"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isInPrivacyMode()Z
    .locals 3

    .line 95
    iget-object v0, p0, Ltct/util/privacymode/TctPrivacyModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_phone_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 96
    .local v0, "mode":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public isPrivacyModeEnable()Z
    .locals 3

    .line 100
    iget-object v0, p0, Ltct/util/privacymode/TctPrivacyModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "privacy_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 101
    .local v0, "mode":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public isPrivateApp(Ljava/lang/String;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "isPrivate":Z
    iget-object v1, p0, Ltct/util/privacymode/TctPrivacyModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 121
    .local v1, "cr":Landroid/content/ContentResolver;
    sget-object v3, Ltct/util/privacymode/TctPrivacyModeHelper;->PRIVATE_APP_CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v6, v9

    const/4 v4, 0x0

    const-string v5, "package_name=?"

    const/4 v7, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 122
    .local v2, "c":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 124
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    move v8, v9

    :goto_0
    move v0, v8

    .line 126
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 127
    goto :goto_1

    .line 126
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v3

    .line 129
    :cond_1
    :goto_1
    return v0
.end method

.method public isPrivateFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public saveNormalPassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .line 91
    iget-object v0, p0, Ltct/util/privacymode/TctPrivacyModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "normal_mode_password"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 92
    return-void
.end method

.method public setAppPrivateFlag(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isPrivate"    # Z

    .line 133
    iget-object v0, p0, Ltct/util/privacymode/TctPrivacyModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 134
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 135
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v1}, Landroid/content/ContentValues;-><init>(I)V

    move-object v1, v2

    .line 136
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "package_name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    sget-object v2, Ltct/util/privacymode/TctPrivacyModeHelper;->PRIVATE_APP_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 138
    .end local v1    # "values":Landroid/content/ContentValues;
    goto :goto_0

    .line 139
    :cond_0
    sget-object v2, Ltct/util/privacymode/TctPrivacyModeHelper;->PRIVATE_APP_CONTENT_URI:Landroid/net/Uri;

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const-string v3, "package_name=?"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 141
    :goto_0
    return-void
.end method

.method public setFilePrivateFlag(Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "isPrivate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 158
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 159
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Ltct/util/privacymode/TctPrivacyModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 162
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v1}, Landroid/content/ContentValues;-><init>(I)V

    move-object v1, v2

    .line 163
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "tct_is_private"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 165
    const-string v2, "_data IN ("

    .line 166
    .local v2, "DATA_KEY_IN":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_data IN ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .local v3, "selection":Ljava/lang/StringBuilder;
    const/4 v4, 0x1

    .line 168
    .local v4, "first":Z
    const/4 v5, 0x1

    .line 169
    .local v5, "firstBuket":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 170
    if-eqz v4, :cond_1

    .line 171
    const/4 v4, 0x0

    goto :goto_1

    .line 173
    :cond_1
    const/16 v7, 0x2c

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 177
    .end local v6    # "i":I
    :cond_2
    const/16 v6, 0x29

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, "sel":Ljava/lang/String;
    :try_start_0
    sget-object v7, Ltct/util/privacymode/TctPrivacyModeHelper;->FILE_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v1, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    goto :goto_2

    .line 181
    :catch_0
    move-exception v7

    .line 182
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setFilePrivateFlag packageName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", isPrivate = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ccxccx"

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public setPrivacyPassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Ltct/util/privacymode/TctPrivacyModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "privacy_mode_password"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 84
    return-void
.end method

.method public shouldHidePrivateContents()Z
    .locals 1

    .line 105
    invoke-virtual {p0}, Ltct/util/privacymode/TctPrivacyModeHelper;->isPrivacyModeEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltct/util/privacymode/TctPrivacyModeHelper;->isInPrivacyMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
