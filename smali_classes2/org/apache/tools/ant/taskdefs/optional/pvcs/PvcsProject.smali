.class public Lorg/apache/tools/ant/taskdefs/optional/pvcs/PvcsProject;
.super Ljava/lang/Object;
.source "PvcsProject.java"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/PvcsProject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/PvcsProject;->name:Ljava/lang/String;

    return-void
.end method
