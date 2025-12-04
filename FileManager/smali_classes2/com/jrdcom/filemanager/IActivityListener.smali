.class public interface abstract Lcom/jrdcom/filemanager/IActivityListener;
.super Ljava/lang/Object;
.source "IActivityListener.java"


# virtual methods
.method public abstract afreshItemMorePop()V
.end method

.method public abstract cancelProgressDialog()V
.end method

.method public abstract changeViewMode(Ljava/lang/String;)V
.end method

.method public abstract checkIsSelectAll()Z
.end method

.method public abstract clearAdapter()V
.end method

.method public abstract clearChecked()V
.end method

.method public abstract clickAddPrivateMode()V
.end method

.method public abstract clickCompressBtn(ILjava/lang/String;)V
.end method

.method public abstract clickCopyBtn()V
.end method

.method public abstract clickCutBtn()V
.end method

.method public abstract clickDelteBtn(I)V
.end method

.method public abstract clickDetailsBtn()V
.end method

.method public abstract clickEditBtn()V
.end method

.method public abstract clickExtractBtn(ILjava/lang/String;)V
.end method

.method public abstract clickGlobalSearchBtn()V
.end method

.method public abstract clickMigrateBtn()V
.end method

.method public abstract clickNewFolderBtn()V
.end method

.method public abstract clickNotificationBtn()V
.end method

.method public abstract clickPasteBtn()V
.end method

.method public abstract clickProgressBtn(I)V
.end method

.method public abstract clickRemovePrivateMode()V
.end method

.method public abstract clickRenameBtn(Ljava/lang/String;)V
.end method

.method public abstract clickSearchBtn()V
.end method

.method public abstract clickSelectAllBtn()V
.end method

.method public abstract clickSetPrivateBtn()V
.end method

.method public abstract clickSetPublicBtn()V
.end method

.method public abstract clickShareBtn()V
.end method

.method public abstract clickShortcutBtn()V
.end method

.method public abstract clickShortcutToNormal()V
.end method

.method public abstract closeFloatMenu(Z)V
.end method

.method public abstract closeItemMorePop()V
.end method

.method public abstract deleteFileResponse()V
.end method

.method public abstract getAdapterSize()I
.end method

.method public abstract getCheckedList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isItemMorePop()Z
.end method

.method public abstract isShowNoFolderView()Z
.end method

.method public abstract managerTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
.end method

.method public abstract moveToPrivate()V
.end method

.method public abstract moveToPublic()V
.end method

.method public abstract onBackPressed()V
.end method

.method public abstract onConfiguarationChanged()V
.end method

.method public abstract onGlobalSearchBackPressed()V
.end method

.method public abstract onScannerFinished()V
.end method

.method public abstract onScannerStarted()V
.end method

.method public abstract refreshAdapter(Ljava/lang/String;IIIZZ)Z
.end method

.method public abstract registerDataContentObserver()V
.end method

.method public abstract removePrivateMode()V
.end method

.method public abstract restoreCheckedList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract saveSelectedList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract searchQueryTextChange()V
.end method

.method public abstract showAnim(Landroid/app/FragmentManager;I)V
.end method

.method public abstract showBeforeSearchList()V
.end method

.method public abstract showFloatMenu(IZZ)V
.end method

.method public abstract showNoFolderResultView(Z)V
.end method

.method public abstract showNoFolderResults(Z)V
.end method

.method public abstract showNoSearchResults(ZLjava/lang/String;)V
.end method

.method public abstract switchToCopyView()V
.end method

.method public abstract unMountUpdate()V
.end method

.method public abstract unRegisterDataContentObserver()V
.end method

.method public abstract updateActionMode(I)V
.end method

.method public abstract updateEditBarState()V
.end method
