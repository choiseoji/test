package com.example.demo;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class MemberService {

    private final MemberRepository memberRepository;

    @Transactional
    public void createMember() {

        Member member = Member.builder()
                .name("test")
                .build();
        memberRepository.save(member);
    }

    public String getMember() {

        Member member = memberRepository.findById(1L)
                .orElse(null);
        return member.getName();
    }
}
