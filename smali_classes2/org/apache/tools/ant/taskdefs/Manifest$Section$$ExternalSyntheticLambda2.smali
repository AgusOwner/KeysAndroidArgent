.class public final synthetic Lorg/apache/tools/ant/taskdefs/Manifest$Section$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->addValue(Ljava/lang/String;)V

    return-void
.end method
