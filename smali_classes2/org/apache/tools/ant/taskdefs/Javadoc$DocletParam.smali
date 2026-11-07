.class public Lorg/apache/tools/ant/taskdefs/Javadoc$DocletParam;
.super Ljava/lang/Object;
.source "Javadoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Javadoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DocletParam"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/Javadoc;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/Javadoc;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletParam;->this$0:Lorg/apache/tools/ant/taskdefs/Javadoc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletParam;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletParam;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletParam;->name:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletParam;->value:Ljava/lang/String;

    return-void
.end method
