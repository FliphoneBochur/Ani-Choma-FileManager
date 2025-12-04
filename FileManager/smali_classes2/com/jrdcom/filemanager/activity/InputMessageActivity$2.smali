.class Lcom/jrdcom/filemanager/activity/InputMessageActivity$2;
.super Landroid/text/InputFilter$LengthFilter;
.source "InputMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/activity/InputMessageActivity;->setEditTextFilter(Landroid/widget/EditText;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/activity/InputMessageActivity;

.field final synthetic val$maxLength:I


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/activity/InputMessageActivity;II)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/InputMessageActivity;

    iput p3, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity$2;->val$maxLength:I

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7

    .line 243
    const-string v0, "UTF-8"

    .line 245
    nop

    .line 248
    nop

    .line 254
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    .line 255
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    .line 256
    const-string v4, "check@"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "destLength: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", sourLength: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget v4, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity$2;->val$maxLength:I

    const/4 v5, 0x1

    if-lt v4, v2, :cond_1

    iget v4, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity$2;->val$maxLength:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v4, v2, :cond_0

    if-lez v3, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    move v4, v1

    goto :goto_1

    .line 258
    :cond_1
    :goto_0
    move v4, v5

    .line 262
    :goto_1
    :try_start_1
    iget v6, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity$2;->val$maxLength:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-le v2, v6, :cond_2

    .line 263
    move v2, v5

    goto :goto_2

    .line 262
    :cond_2
    move v2, v1

    .line 267
    :goto_2
    if-eqz v2, :cond_3

    if-ne v3, v5, :cond_3

    .line 268
    goto :goto_3

    .line 275
    :cond_3
    move v5, v1

    :goto_3
    goto :goto_5

    .line 271
    :catch_0
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v2

    move v4, v1

    .line 272
    :goto_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v1

    move v5, v2

    .line 279
    :goto_5
    if-eqz v4, :cond_5

    if-eqz v2, :cond_4

    if-eqz v5, :cond_5

    .line 280
    :cond_4
    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/InputMessageActivity;

    invoke-static {v2}, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->access$100(Lcom/jrdcom/filemanager/activity/InputMessageActivity;)V

    .line 286
    :cond_5
    if-eqz v4, :cond_b

    .line 288
    :try_start_2
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 289
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_a

    .line 290
    :cond_6
    iget v2, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity$2;->val$maxLength:I

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v2, v3

    .line 291
    if-gtz v2, :cond_7

    .line 292
    const-string p1, ""

    return-object p1

    .line 293
    :cond_7
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_8

    .line 294
    const/4 p1, 0x0

    return-object p1

    .line 296
    :cond_8
    nop

    .line 297
    move v3, v1

    move v4, v3

    :goto_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_a

    .line 298
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 299
    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v4, v5

    .line 300
    if-le v4, v2, :cond_9

    .line 301
    invoke-interface {p1, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    .line 297
    :cond_9
    move v3, v6

    goto :goto_6

    .line 308
    :cond_a
    goto :goto_7

    .line 306
    :catch_2
    move-exception v0

    .line 307
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 311
    :cond_b
    :goto_7
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
