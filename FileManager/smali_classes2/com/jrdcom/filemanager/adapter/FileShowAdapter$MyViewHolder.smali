.class Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FileShowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/adapter/FileShowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field fileItem:Landroid/widget/LinearLayout;

.field fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

.field final synthetic this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;Landroid/view/View;)V
    .locals 23

    .line 710
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    .line 711
    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 712
    invoke-static/range {p1 .. p1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->access$200(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;)Lcom/jrdcom/filemanager/FileManagerApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isGridMode(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v2

    const v3, 0x7f08006c

    const v4, 0x7f08006b

    const v5, 0x7f080066

    const v6, 0x7f080068

    const v7, 0x7f080069

    const v8, 0x7f080067

    const v9, 0x7f0800b6

    if-eqz v2, :cond_0

    .line 713
    const v2, 0x7f080087

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileItem:Landroid/widget/LinearLayout;

    .line 714
    new-instance v2, Lcom/jrdcom/filemanager/view/FileItemView;

    .line 715
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Landroid/widget/TextView;

    .line 716
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Landroid/widget/CheckBox;

    .line 717
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroid/widget/ImageView;

    const v5, 0x7f08006e

    .line 718
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroid/widget/ImageView;

    .line 719
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Landroid/widget/TextView;

    .line 720
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Landroid/widget/TextView;

    .line 721
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, Landroid/widget/ImageView;

    const v4, 0x7f080089

    .line 722
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Landroid/widget/LinearLayout;

    const v4, 0x7f080088

    .line 723
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v19, v4

    check-cast v19, Landroid/widget/LinearLayout;

    const v4, 0x7f080086

    .line 724
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v20, v4

    check-cast v20, Landroid/widget/LinearLayout;

    const v4, 0x7f0800ae

    .line 725
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v21, v4

    check-cast v21, Landroid/widget/TextView;

    .line 726
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Landroid/widget/ImageView;

    move-object v10, v2

    invoke-direct/range {v10 .. v22}, Lcom/jrdcom/filemanager/view/FileItemView;-><init>(Landroid/widget/TextView;Landroid/widget/CheckBox;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    iput-object v2, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    goto :goto_0

    .line 728
    :cond_0
    const v2, 0x7f08008a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileItem:Landroid/widget/LinearLayout;

    .line 729
    new-instance v2, Lcom/jrdcom/filemanager/view/FileItemView;

    .line 730
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Landroid/widget/CheckBox;

    .line 731
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Landroid/widget/TextView;

    .line 732
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Landroid/widget/TextView;

    .line 733
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Landroid/widget/TextView;

    .line 734
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Landroid/widget/ImageView;

    .line 735
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Landroid/widget/ImageView;

    const v4, 0x7f08014d

    .line 736
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, Landroid/widget/TextView;

    .line 737
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Landroid/widget/ImageView;

    move-object v10, v2

    invoke-direct/range {v10 .. v18}, Lcom/jrdcom/filemanager/view/FileItemView;-><init>(Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    iput-object v2, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    .line 740
    :goto_0
    return-void
.end method
