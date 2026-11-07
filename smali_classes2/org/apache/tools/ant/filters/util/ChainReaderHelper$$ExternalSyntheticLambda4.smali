.class public final synthetic Lorg/apache/tools/ant/filters/util/ChainReaderHelper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Vector;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Vector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$$ExternalSyntheticLambda4;->f$0:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$$ExternalSyntheticLambda4;->f$0:Ljava/util/Vector;

    check-cast p1, Lorg/apache/tools/ant/types/FilterChain;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->$r8$lambda$GrJK-eI9oUajOeWCKhPTZp-DlBM(Ljava/util/Vector;Ljava/lang/Object;)Z

    return-void
.end method
