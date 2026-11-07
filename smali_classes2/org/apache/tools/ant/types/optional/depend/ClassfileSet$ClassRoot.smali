.class public Lorg/apache/tools/ant/types/optional/depend/ClassfileSet$ClassRoot;
.super Ljava/lang/Object;
.source "ClassfileSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/optional/depend/ClassfileSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassRoot"
.end annotation


# instance fields
.field private rootClass:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassname()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet$ClassRoot;->rootClass:Ljava/lang/String;

    return-object v0
.end method

.method public setClassname(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lorg/apache/tools/ant/types/optional/depend/ClassfileSet$ClassRoot;->rootClass:Ljava/lang/String;

    return-void
.end method
