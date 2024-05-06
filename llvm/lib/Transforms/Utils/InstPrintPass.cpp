//===-- InstPrintPass.cpp - Example Transformations --------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "llvm/Transforms/Utils/InstPrintPass.h"

using namespace llvm;
  
PreservedAnalyses InstPrintPass::run(Function &F,
                                    FunctionAnalysisManager &AM) {
    errs() << F.getName() << "\n";
    for (BasicBlock &BB : F) {  
        for (Instruction &I : BB) {  
            errs() << "Opcode: " << I.getOpcodeName() << "\n";  
            errs() << "Operands: ";  
            for (Use &U : I.operands()) {  
                Value *V = U.get();  
                V->printAsOperand(errs(), false);  
                errs() << " ";  
            }  
            errs() << "\n\n";  
        }  
    }

    return PreservedAnalyses::all();
}
