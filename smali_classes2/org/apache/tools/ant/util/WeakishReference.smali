.class public Lorg/apache/tools/ant/util/WeakishReference;
.super Ljava/lang/Object;
.source "WeakishReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/util/WeakishReference$HardReference;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private weakref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/tools/ant/util/WeakishReference;->weakref:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static createReference(Ljava/lang/Object;)Lorg/apache/tools/ant/util/WeakishReference;
    .locals 1

    .line 71
    new-instance v0, Lorg/apache/tools/ant/util/WeakishReference;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/util/WeakishReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/tools/ant/util/WeakishReference;->weakref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
