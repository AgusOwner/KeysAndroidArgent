.class public Lorg/apache/tools/ant/taskdefs/Ant$TargetElement;
.super Ljava/lang/Object;
.source "Ant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Ant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TargetElement"
.end annotation


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 805
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant$TargetElement;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 797
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Ant$TargetElement;->name:Ljava/lang/String;

    return-void
.end method
