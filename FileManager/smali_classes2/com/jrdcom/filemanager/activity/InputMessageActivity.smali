.class public Lcom/jrdcom/filemanager/activity/InputMessageActivity;
.super Landroid/app/Activity;
.source "InputMessageActivity.java"

# interfaces
.implements Landroid/widget/MenuBar$MenuBarListener;


# static fields
.field public static final INVIND_RES_ID:I = -0x1

.field public static final RESULT_CENTER_CLICK:I = 0x66

.field private static final VIBRATOR_TIME:I = 0x64


# instance fields
.field private isValidate:Z

.field private mClickSoundManager:Lcom/jrdcom/filemanager/manager/ClickSoundManager;

.field private mEditInput:Landroid/widget/EditText;

.field private mHasToasted:Z

.field private mMenuBar:Landroid/widget/MenuBar;

.field private mMessageTitle:Landroid/widget/TextView;

.field protected mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jrdcom/filemanager/activity/InputMessageActivity;)Landroid/widget/EditText;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mEditInput:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jrdcom/filemanager/activity/InputMessageActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->tooLongToastShow()V

    return-void
.end method

.method static synthetic access$202(Lcom/jrdcom/filemanager/activity/InputMessageActivity;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->isValidate:Z

    return p1
.end method

.method static synthetic access$300(Lcom/jrdcom/filemanager/activity/InputMessageActivity;Ljava/lang/String;)Z
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->isCreateFolderValidate(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private initView(Landroid/widget/MenuBar;)V
    .locals 4

    .line 109
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "defaultname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x32

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    .line 111
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 116
    new-instance v2, Lcom/jrdcom/filemanager/view/ToastHelper;

    invoke-direct {v2, p0}, Lcom/jrdcom/filemanager/view/ToastHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    .line 117
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 118
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mMessageTitle:Landroid/widget/TextView;

    const v2, 0x7f0c00c9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 119
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mEditInput:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mEditInput:Landroid/widget/EditText;

    const v1, 0x84001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 124
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mMessageTitle:Landroid/widget/TextView;

    const v1, 0x7f0c0048

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 125
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mEditInput:Landroid/widget/EditText;

    const v1, 0x7f0c004e

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 129
    :goto_0
    const v0, 0x7f0c0047

    const v1, 0x7f0c002f

    const/4 v2, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 132
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mEditInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 133
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mEditInput:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->setTextChangedCallback(Landroid/widget/EditText;)V

    .line 135
    return-void
.end method

.method private isCreateFolderValidate(Ljava/lang/String;)Z
    .locals 4

    .line 341
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 342
    return v1

    .line 344
    :cond_0
    const-string v0, ".*[/\\\\:*?\"<>|].*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    const v0, 0x7f0c0087

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    .line 346
    return v1

    .line 348
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const v2, 0x7f0c0089

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 353
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 354
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    invoke-virtual {p1, v2}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    .line 356
    return v1

    .line 359
    :cond_3
    const/4 p1, 0x1

    return p1

    .line 349
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    invoke-virtual {p1, v2}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    .line 350
    return v1
.end method

.method private releaseInput()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mEditInput:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 201
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 202
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mEditInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 205
    :cond_0
    :try_start_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 206
    if-eqz v0, :cond_1

    .line 207
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mEditInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_1
    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMessageActivity"

    invoke-static {v1, v0}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_0
    return-void
.end method

.method private setEditTextFilter(Landroid/widget/EditText;I)V
    .locals 2

    .line 241
    new-instance v0, Lcom/jrdcom/filemanager/activity/InputMessageActivity$2;

    invoke-direct {v0, p0, p2, p2}, Lcom/jrdcom/filemanager/activity/InputMessageActivity$2;-><init>(Lcom/jrdcom/filemanager/activity/InputMessageActivity;II)V

    .line 315
    const/4 p2, 0x1

    new-array p2, p2, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 316
    return-void
.end method

.method private setStatusBarTextColor()V
    .locals 2

    .line 195
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 196
    return-void
.end method

.method private tooLongToastShow()V
    .locals 3

    .line 225
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 226
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    .line 227
    if-eqz v1, :cond_0

    .line 228
    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 232
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    const v1, 0x7f0c007a

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    :goto_0
    return-void

    :array_0
    .array-data 8
        0x64
        0x64
    .end array-data
.end method


# virtual methods
.method public onClickCSK()Z
    .locals 1

    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method public onClickLSK()Z
    .locals 1

    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public onClickRSK()Z
    .locals 1

    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->setStatusBarTextColor()V

    .line 59
    sget-boolean p1, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-eqz p1, :cond_0

    .line 60
    const p1, 0x7f0b0020

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->setContentView(I)V

    goto :goto_0

    .line 62
    :cond_0
    const p1, 0x7f0b001f

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->setContentView(I)V

    .line 66
    :goto_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mMenuBar:Landroid/widget/MenuBar;

    .line 67
    invoke-virtual {p1, p0}, Landroid/widget/MenuBar;->setMenuBarListener(Landroid/widget/MenuBar$MenuBarListener;)V

    .line 70
    sget-boolean p1, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-nez p1, :cond_1

    .line 71
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mMenuBar:Landroid/widget/MenuBar;

    const v0, 0x7f070116

    invoke-virtual {p1, v0}, Landroid/widget/MenuBar;->setOptionMenuItemBackground(I)V

    .line 75
    :cond_1
    const p1, 0x7f080074

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mEditInput:Landroid/widget/EditText;

    .line 77
    const p1, 0x7f0801a3

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mMessageTitle:Landroid/widget/TextView;

    .line 79
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->initView(Landroid/widget/MenuBar;)V

    .line 82
    new-instance p1, Lcom/jrdcom/filemanager/manager/ClickSoundManager;

    invoke-direct {p1, p0}, Lcom/jrdcom/filemanager/manager/ClickSoundManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mClickSoundManager:Lcom/jrdcom/filemanager/manager/ClickSoundManager;

    .line 86
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mEditInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->isCreateFolderValidate(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->isValidate:Z

    .line 87
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 217
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->releaseInput()V

    .line 218
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 139
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_4

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, p1, p2}, Landroid/widget/MenuBar;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mEditInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 158
    iget-boolean p2, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->isValidate:Z

    if-eqz p2, :cond_2

    .line 160
    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/FileUtils;->checkFileName(Ljava/lang/String;)I

    move-result p2

    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->tooLongToastShow()V

    .line 163
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mClickSoundManager:Lcom/jrdcom/filemanager/manager/ClickSoundManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/ClickSoundManager;->clickSound()V

    .line 165
    return v3

    .line 168
    :cond_1
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 169
    const-string v0, "content"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const/16 p1, 0x66

    invoke-virtual {p0, p1, p2}, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->setResult(ILandroid/content/Intent;)V

    .line 173
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mClickSoundManager:Lcom/jrdcom/filemanager/manager/ClickSoundManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/ClickSoundManager;->clickSound()V

    .line 175
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->finish()V

    .line 176
    return v3

    .line 179
    :cond_2
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->isCreateFolderValidate(Ljava/lang/String;)Z

    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 181
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    const p2, 0x7f0c0070

    invoke-virtual {p1, p2}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    .line 185
    :cond_3
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mClickSoundManager:Lcom/jrdcom/filemanager/manager/ClickSoundManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/ClickSoundManager;->clickSound()V

    .line 187
    return v3

    .line 146
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    if-eq p1, v2, :cond_5

    .line 147
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mClickSoundManager:Lcom/jrdcom/filemanager/manager/ClickSoundManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/ClickSoundManager;->clickSound()V

    .line 151
    :cond_5
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->finish()V

    .line 152
    return v3
.end method

.method public onOptionMenuClick(I)V
    .locals 0

    .line 386
    return-void
.end method

.method public onOptionMenuDismiss()V
    .locals 0

    .line 391
    return-void
.end method

.method public onOptionMenuShow()V
    .locals 0

    .line 381
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 92
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->mEditInput:Landroid/widget/EditText;

    new-instance v1, Lcom/jrdcom/filemanager/activity/InputMessageActivity$1;

    invoke-direct {v1, p0}, Lcom/jrdcom/filemanager/activity/InputMessageActivity$1;-><init>(Lcom/jrdcom/filemanager/activity/InputMessageActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    return-void
.end method

.method protected setTextChangedCallback(Landroid/widget/EditText;)V
    .locals 1

    .line 319
    const/16 v0, 0x32

    invoke-direct {p0, p1, v0}, Lcom/jrdcom/filemanager/activity/InputMessageActivity;->setEditTextFilter(Landroid/widget/EditText;I)V

    .line 320
    new-instance v0, Lcom/jrdcom/filemanager/activity/InputMessageActivity$3;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/activity/InputMessageActivity$3;-><init>(Lcom/jrdcom/filemanager/activity/InputMessageActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 337
    return-void
.end method
