.class public final synthetic Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/types/PatternSet;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/types/PatternSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/types/PatternSet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/types/PatternSet;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->lambda$parsePackages$2(Lorg/apache/tools/ant/types/PatternSet;Ljava/lang/String;)V

    return-void
.end method
