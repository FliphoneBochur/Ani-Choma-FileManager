.class public Landroid/support/transition/TransitionManager;
.super Ljava/lang/Object;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/TransitionManager$MultiListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TransitionManager"

.field private static sDefaultTransition:Landroid/support/transition/Transition;

.field private static sPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static sRunningTransitions:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Landroid/support/transition/Transition;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mScenePairTransitions:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/support/transition/Scene;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/support/transition/Scene;",
            "Landroid/support/transition/Transition;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSceneTransitions:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/support/transition/Scene;",
            "Landroid/support/transition/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Landroid/support/transition/AutoTransition;

    invoke-direct {v0}, Landroid/support/transition/AutoTransition;-><init>()V

    sput-object v0, Landroid/support/transition/TransitionManager;->sDefaultTransition:Landroid/support/transition/Transition;

    .line 88
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/support/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionManager;->mSceneTransitions:Landroid/support/v4/util/ArrayMap;

    .line 86
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionManager;->mScenePairTransitions:Landroid/support/v4/util/ArrayMap;

    .line 225
    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .line 79
    sget-object v0, Landroid/support/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;)V
    .locals 1
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 373
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V

    .line 374
    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V
    .locals 2
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "transition"    # Landroid/support/transition/Transition;

    .line 401
    sget-object v0, Landroid/support/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    sget-object v0, Landroid/support/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    if-nez p1, :cond_0

    .line 408
    sget-object p1, Landroid/support/transition/TransitionManager;->sDefaultTransition:Landroid/support/transition/Transition;

    .line 410
    :cond_0
    invoke-virtual {p1}, Landroid/support/transition/Transition;->clone()Landroid/support/transition/Transition;

    move-result-object v0

    .line 411
    .local v0, "transitionClone":Landroid/support/transition/Transition;
    invoke-static {p0, v0}, Landroid/support/transition/TransitionManager;->sceneChangeSetup(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V

    .line 412
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/support/transition/Scene;->setCurrentScene(Landroid/view/View;Landroid/support/transition/Scene;)V

    .line 413
    invoke-static {p0, v0}, Landroid/support/transition/TransitionManager;->sceneChangeRunTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V

    .line 415
    .end local v0    # "transitionClone":Landroid/support/transition/Transition;
    :cond_1
    return-void
.end method

.method private static changeScene(Landroid/support/transition/Scene;Landroid/support/transition/Transition;)V
    .locals 4
    .param p0, "scene"    # Landroid/support/transition/Scene;
    .param p1, "transition"    # Landroid/support/transition/Transition;

    .line 168
    invoke-virtual {p0}, Landroid/support/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    .line 170
    .local v0, "sceneRoot":Landroid/view/ViewGroup;
    sget-object v1, Landroid/support/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 171
    if-nez p1, :cond_0

    .line 172
    invoke-virtual {p0}, Landroid/support/transition/Scene;->enter()V

    goto :goto_0

    .line 174
    :cond_0
    sget-object v1, Landroid/support/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-virtual {p1}, Landroid/support/transition/Transition;->clone()Landroid/support/transition/Transition;

    move-result-object v1

    .line 177
    .local v1, "transitionClone":Landroid/support/transition/Transition;
    invoke-virtual {v1, v0}, Landroid/support/transition/Transition;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/support/transition/Transition;

    .line 179
    invoke-static {v0}, Landroid/support/transition/Scene;->getCurrentScene(Landroid/view/View;)Landroid/support/transition/Scene;

    move-result-object v2

    .line 180
    .local v2, "oldScene":Landroid/support/transition/Scene;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/support/transition/Scene;->isCreatedFromLayoutResource()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/support/transition/Transition;->setCanRemoveViews(Z)V

    .line 184
    :cond_1
    invoke-static {v0, v1}, Landroid/support/transition/TransitionManager;->sceneChangeSetup(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V

    .line 186
    invoke-virtual {p0}, Landroid/support/transition/Scene;->enter()V

    .line 188
    invoke-static {v0, v1}, Landroid/support/transition/TransitionManager;->sceneChangeRunTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V

    .line 191
    .end local v1    # "transitionClone":Landroid/support/transition/Transition;
    .end local v2    # "oldScene":Landroid/support/transition/Scene;
    :cond_2
    :goto_0
    return-void
.end method

.method public static endTransitions(Landroid/view/ViewGroup;)V
    .locals 4
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 423
    sget-object v0, Landroid/support/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 424
    invoke-static {}, Landroid/support/transition/TransitionManager;->getRunningTransitions()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 425
    .local v0, "runningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 427
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 428
    .local v1, "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 429
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/Transition;

    .line 430
    .local v3, "transition":Landroid/support/transition/Transition;
    invoke-virtual {v3, p0}, Landroid/support/transition/Transition;->forceToEnd(Landroid/view/ViewGroup;)V

    .line 428
    .end local v3    # "transition":Landroid/support/transition/Transition;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 433
    .end local v1    # "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition;>;"
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method static getRunningTransitions()Landroid/support/v4/util/ArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Landroid/support/transition/Transition;",
            ">;>;"
        }
    .end annotation

    .line 194
    sget-object v0, Landroid/support/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    .line 195
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 196
    .local v0, "runningTransitions":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v4/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/support/transition/Transition;>;>;>;"
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/util/ArrayMap;

    .line 198
    .local v1, "transitions":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/support/transition/Transition;>;>;"
    if-eqz v1, :cond_0

    .line 199
    return-object v1

    .line 202
    .end local v1    # "transitions":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/support/transition/Transition;>;>;"
    :cond_0
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 203
    .restart local v1    # "transitions":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/support/transition/Transition;>;>;"
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v0, v2

    .line 204
    sget-object v2, Landroid/support/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 205
    return-object v1
.end method

.method private getTransition(Landroid/support/transition/Scene;)Landroid/support/transition/Transition;
    .locals 4
    .param p1, "scene"    # Landroid/support/transition/Scene;

    .line 138
    invoke-virtual {p1}, Landroid/support/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    .line 139
    .local v0, "sceneRoot":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 141
    invoke-static {v0}, Landroid/support/transition/Scene;->getCurrentScene(Landroid/view/View;)Landroid/support/transition/Scene;

    move-result-object v1

    .line 142
    .local v1, "currScene":Landroid/support/transition/Scene;
    if-eqz v1, :cond_0

    .line 143
    iget-object v2, p0, Landroid/support/transition/TransitionManager;->mScenePairTransitions:Landroid/support/v4/util/ArrayMap;

    .line 144
    invoke-virtual {v2, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/util/ArrayMap;

    .line 145
    .local v2, "sceneTransitionMap":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/support/transition/Scene;Landroid/support/transition/Transition;>;"
    if-eqz v2, :cond_0

    .line 146
    invoke-virtual {v2, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/Transition;

    .line 147
    .local v3, "transition":Landroid/support/transition/Transition;
    if-eqz v3, :cond_0

    .line 148
    return-object v3

    .line 153
    .end local v1    # "currScene":Landroid/support/transition/Scene;
    .end local v2    # "sceneTransitionMap":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/support/transition/Scene;Landroid/support/transition/Transition;>;"
    .end local v3    # "transition":Landroid/support/transition/Transition;
    :cond_0
    iget-object v1, p0, Landroid/support/transition/TransitionManager;->mSceneTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    .line 154
    .local v1, "transition":Landroid/support/transition/Transition;
    if-eqz v1, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/support/transition/TransitionManager;->sDefaultTransition:Landroid/support/transition/Transition;

    :goto_0
    return-object v2
.end method

.method public static go(Landroid/support/transition/Scene;)V
    .locals 1
    .param p0, "scene"    # Landroid/support/transition/Scene;

    .line 342
    sget-object v0, Landroid/support/transition/TransitionManager;->sDefaultTransition:Landroid/support/transition/Transition;

    invoke-static {p0, v0}, Landroid/support/transition/TransitionManager;->changeScene(Landroid/support/transition/Scene;Landroid/support/transition/Transition;)V

    .line 343
    return-void
.end method

.method public static go(Landroid/support/transition/Scene;Landroid/support/transition/Transition;)V
    .locals 0
    .param p0, "scene"    # Landroid/support/transition/Scene;
    .param p1, "transition"    # Landroid/support/transition/Transition;

    .line 360
    invoke-static {p0, p1}, Landroid/support/transition/TransitionManager;->changeScene(Landroid/support/transition/Scene;Landroid/support/transition/Transition;)V

    .line 361
    return-void
.end method

.method private static sceneChangeRunTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V
    .locals 2
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "transition"    # Landroid/support/transition/Transition;

    .line 210
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 211
    new-instance v0, Landroid/support/transition/TransitionManager$MultiListener;

    invoke-direct {v0, p1, p0}, Landroid/support/transition/TransitionManager$MultiListener;-><init>(Landroid/support/transition/Transition;Landroid/view/ViewGroup;)V

    .line 212
    .local v0, "listener":Landroid/support/transition/TransitionManager$MultiListener;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 213
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 215
    .end local v0    # "listener":Landroid/support/transition/TransitionManager$MultiListener;
    :cond_0
    return-void
.end method

.method private static sceneChangeSetup(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V
    .locals 3
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "transition"    # Landroid/support/transition/Transition;

    .line 302
    invoke-static {}, Landroid/support/transition/TransitionManager;->getRunningTransitions()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 304
    .local v0, "runningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 305
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    .line 306
    .local v2, "runningTransition":Landroid/support/transition/Transition;
    invoke-virtual {v2, p0}, Landroid/support/transition/Transition;->pause(Landroid/view/View;)V

    .line 307
    .end local v2    # "runningTransition":Landroid/support/transition/Transition;
    goto :goto_0

    .line 310
    :cond_0
    if-eqz p1, :cond_1

    .line 311
    const/4 v1, 0x1

    invoke-virtual {p1, p0, v1}, Landroid/support/transition/Transition;->captureValues(Landroid/view/ViewGroup;Z)V

    .line 315
    :cond_1
    invoke-static {p0}, Landroid/support/transition/Scene;->getCurrentScene(Landroid/view/View;)Landroid/support/transition/Scene;

    move-result-object v1

    .line 316
    .local v1, "previousScene":Landroid/support/transition/Scene;
    if-eqz v1, :cond_2

    .line 317
    invoke-virtual {v1}, Landroid/support/transition/Scene;->exit()V

    .line 319
    :cond_2
    return-void
.end method


# virtual methods
.method public setTransition(Landroid/support/transition/Scene;Landroid/support/transition/Scene;Landroid/support/transition/Transition;)V
    .locals 2
    .param p1, "fromScene"    # Landroid/support/transition/Scene;
    .param p2, "toScene"    # Landroid/support/transition/Scene;
    .param p3, "transition"    # Landroid/support/transition/Transition;

    .line 118
    iget-object v0, p0, Landroid/support/transition/TransitionManager;->mScenePairTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/ArrayMap;

    .line 119
    .local v0, "sceneTransitionMap":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/support/transition/Scene;Landroid/support/transition/Transition;>;"
    if-nez v0, :cond_0

    .line 120
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 121
    iget-object v1, p0, Landroid/support/transition/TransitionManager;->mScenePairTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_0
    invoke-virtual {v0, p1, p3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-void
.end method

.method public setTransition(Landroid/support/transition/Scene;Landroid/support/transition/Transition;)V
    .locals 1
    .param p1, "scene"    # Landroid/support/transition/Scene;
    .param p2, "transition"    # Landroid/support/transition/Transition;

    .line 101
    iget-object v0, p0, Landroid/support/transition/TransitionManager;->mSceneTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method public transitionTo(Landroid/support/transition/Scene;)V
    .locals 1
    .param p1, "scene"    # Landroid/support/transition/Scene;

    .line 332
    invoke-direct {p0, p1}, Landroid/support/transition/TransitionManager;->getTransition(Landroid/support/transition/Scene;)Landroid/support/transition/Transition;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/transition/TransitionManager;->changeScene(Landroid/support/transition/Scene;Landroid/support/transition/Transition;)V

    .line 333
    return-void
.end method
